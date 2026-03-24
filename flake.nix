{
  description = "Versioned LicensePlist binary packages for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          mkLicenseplist = args: pkgs.callPackage ./packages/mkLicenseplist.nix args;
          versioned = {
            licenseplist_3_27_1 = mkLicenseplist {
              versionId = "3_27_1";
              platforms = [
                "x86_64-darwin"
                "aarch64-darwin"
              ];
            };
          };
        in
        {
          packages = pkgs.lib.filterAttrs (_: pkg: builtins.elem system pkg.meta.platforms) (
            versioned
            // {
              licenseplist_3_27 = versioned.licenseplist_3_27_1;
              licenseplist = versioned.licenseplist_3_27_1;
              default = versioned.licenseplist_3_27_1;
            }
          );

          formatter = pkgs.nixfmt;

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
