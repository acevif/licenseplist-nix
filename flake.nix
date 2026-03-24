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
          darwinPlatforms = [
            "x86_64-darwin"
            "aarch64-darwin"
          ];
          mkVersion = versionId:
            mkLicenseplist {
              inherit versionId;
              platforms = darwinPlatforms;
            };
          versioned = {
            licenseplist_3_25_0 = mkVersion "3_25_0";
            licenseplist_3_25_1 = mkVersion "3_25_1";
            licenseplist_3_26_0 = mkVersion "3_26_0";
            licenseplist_3_27_0 = mkVersion "3_27_0";
            licenseplist_3_27_1 = mkVersion "3_27_1";
            licenseplist_3_27_2 = mkVersion "3_27_2";
          };
        in
        {
          packages = pkgs.lib.filterAttrs (_: pkg: builtins.elem system pkg.meta.platforms) (
            versioned
            // {
              licenseplist_3_25 = versioned.licenseplist_3_25_1;
              licenseplist_3_26 = versioned.licenseplist_3_26_0;
              licenseplist_3_27 = versioned.licenseplist_3_27_2;
              licenseplist = versioned.licenseplist_3_27_2;
              default = versioned.licenseplist_3_27_2;
            }
          );

          formatter = pkgs.nixfmt;

          devShells.default = pkgs.mkShell {
            packages = [ pkgs.nvfetcher ];
          };
        };
    };
}
