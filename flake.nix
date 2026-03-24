{
  description = "Versioned LicensePlist binary packages for Nix";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    ignore = {
      url = "github:acevif/ignore";
      inputs.flake-parts.follows = "flake-parts";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        {
          pkgs,
          system,
          inputs',
          ...
        }:
        let
          mkLicenseplist = args: pkgs.callPackage ./packages/mkLicenseplist.nix args;
          licenseplist_3_0_0 = mkLicenseplist {
            versionId = "3_0_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_1 = mkLicenseplist {
            versionId = "3_0_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_2 = mkLicenseplist {
            versionId = "3_0_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_3 = mkLicenseplist {
            versionId = "3_0_3";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_4 = mkLicenseplist {
            versionId = "3_0_4";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_5 = mkLicenseplist {
            versionId = "3_0_5";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_6 = mkLicenseplist {
            versionId = "3_0_6";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_0_7 = mkLicenseplist {
            versionId = "3_0_7";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_11_0 = mkLicenseplist {
            versionId = "3_11_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_12_0 = mkLicenseplist {
            versionId = "3_12_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_13_0 = mkLicenseplist {
            versionId = "3_13_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_14_2 = mkLicenseplist {
            versionId = "3_14_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_14_4 = mkLicenseplist {
            versionId = "3_14_4";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_15_0 = mkLicenseplist {
            versionId = "3_15_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_16_0 = mkLicenseplist {
            versionId = "3_16_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_17_0 = mkLicenseplist {
            versionId = "3_17_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_18_0 = mkLicenseplist {
            versionId = "3_18_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_19_0 = mkLicenseplist {
            versionId = "3_19_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_19_1 = mkLicenseplist {
            versionId = "3_19_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_19_2 = mkLicenseplist {
            versionId = "3_19_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_20_0 = mkLicenseplist {
            versionId = "3_20_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_21_0 = mkLicenseplist {
            versionId = "3_21_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_21_1 = mkLicenseplist {
            versionId = "3_21_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_22_0 = mkLicenseplist {
            versionId = "3_22_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_22_2 = mkLicenseplist {
            versionId = "3_22_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_22_3 = mkLicenseplist {
            versionId = "3_22_3";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_22_4 = mkLicenseplist {
            versionId = "3_22_4";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_22_5 = mkLicenseplist {
            versionId = "3_22_5";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_23_3 = mkLicenseplist {
            versionId = "3_23_3";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_23_4 = mkLicenseplist {
            versionId = "3_23_4";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_1 = mkLicenseplist {
            versionId = "3_24_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_2 = mkLicenseplist {
            versionId = "3_24_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_3 = mkLicenseplist {
            versionId = "3_24_3";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_5 = mkLicenseplist {
            versionId = "3_24_5";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_8 = mkLicenseplist {
            versionId = "3_24_8";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_9 = mkLicenseplist {
            versionId = "3_24_9";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_10 = mkLicenseplist {
            versionId = "3_24_10";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_24_11 = mkLicenseplist {
            versionId = "3_24_11";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_25_0 = mkLicenseplist {
            versionId = "3_25_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_25_1 = mkLicenseplist {
            versionId = "3_25_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_26_0 = mkLicenseplist {
            versionId = "3_26_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_27_0 = mkLicenseplist {
            versionId = "3_27_0";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_27_1 = mkLicenseplist {
            versionId = "3_27_1";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
          licenseplist_3_27_2 = mkLicenseplist {
            versionId = "3_27_2";
            platforms = [
              "x86_64-darwin"
              "aarch64-darwin"
            ];
          };
        in
        {
          packages = pkgs.lib.filterAttrs (_: pkg: builtins.elem system pkg.meta.platforms) {
            inherit
              licenseplist_3_0_0
              licenseplist_3_0_1
              licenseplist_3_0_2
              licenseplist_3_0_3
              licenseplist_3_0_4
              licenseplist_3_0_5
              licenseplist_3_0_6
              licenseplist_3_0_7
              licenseplist_3_11_0
              licenseplist_3_12_0
              licenseplist_3_13_0
              licenseplist_3_14_2
              licenseplist_3_14_4
              licenseplist_3_15_0
              licenseplist_3_16_0
              licenseplist_3_17_0
              licenseplist_3_18_0
              licenseplist_3_19_0
              licenseplist_3_19_1
              licenseplist_3_19_2
              licenseplist_3_20_0
              licenseplist_3_21_0
              licenseplist_3_21_1
              licenseplist_3_22_0
              licenseplist_3_22_2
              licenseplist_3_22_3
              licenseplist_3_22_4
              licenseplist_3_22_5
              licenseplist_3_23_3
              licenseplist_3_23_4
              licenseplist_3_24_1
              licenseplist_3_24_2
              licenseplist_3_24_3
              licenseplist_3_24_5
              licenseplist_3_24_8
              licenseplist_3_24_9
              licenseplist_3_24_10
              licenseplist_3_24_11
              licenseplist_3_25_0
              licenseplist_3_25_1
              licenseplist_3_26_0
              licenseplist_3_27_0
              licenseplist_3_27_1
              licenseplist_3_27_2
              ;
            licenseplist_3_0 = licenseplist_3_0_7;
            licenseplist_3_11 = licenseplist_3_11_0;
            licenseplist_3_12 = licenseplist_3_12_0;
            licenseplist_3_13 = licenseplist_3_13_0;
            licenseplist_3_14 = licenseplist_3_14_4;
            licenseplist_3_15 = licenseplist_3_15_0;
            licenseplist_3_16 = licenseplist_3_16_0;
            licenseplist_3_17 = licenseplist_3_17_0;
            licenseplist_3_18 = licenseplist_3_18_0;
            licenseplist_3_19 = licenseplist_3_19_2;
            licenseplist_3_20 = licenseplist_3_20_0;
            licenseplist_3_21 = licenseplist_3_21_1;
            licenseplist_3_22 = licenseplist_3_22_5;
            licenseplist_3_23 = licenseplist_3_23_4;
            licenseplist_3_24 = licenseplist_3_24_11;
            licenseplist_3_25 = licenseplist_3_25_1;
            licenseplist_3_26 = licenseplist_3_26_0;
            licenseplist_3_27 = licenseplist_3_27_2;
            licenseplist = licenseplist_3_27_2;
            default = licenseplist_3_27_2;
          };

          formatter = pkgs.nixfmt;

          devShells.default = pkgs.mkShell {
            packages = [
              inputs'.ignore.packages.default
              pkgs.nvfetcher
            ];
          };
        };
    };
}
