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
          supportedPlatforms = [
            "x86_64-darwin"
            "aarch64-darwin"
          ];
          mkLicenseplist = args: pkgs.callPackage ./packages/mkLicenseplist.nix args;
        in
        {
          # Package entries and aliases in this file are intentionally manually enumerated.
          # This block is table data for which versions are published and which platforms each
          # version supports.
          # Keep it explicit so version-specific exceptions, gaps, backfills, yanked releases,
          # and platform corrections can be handled directly and reviewed as data changes.
          # Do not refactor this into generated or inferred logic.
          # Keep the README package lists in sync when updating this table.
          packages = pkgs.lib.filterAttrs (_: pkg: builtins.elem system pkg.meta.platforms) rec {
            licenseplist_1_0_0 = mkLicenseplist {
              versionId = "1_0_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_0_1 = mkLicenseplist {
              versionId = "1_0_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_0_2 = mkLicenseplist {
              versionId = "1_0_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_0_3 = mkLicenseplist {
              versionId = "1_0_3";
              platforms = supportedPlatforms;
            };
            licenseplist_1_1_0 = mkLicenseplist {
              versionId = "1_1_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_2_0 = mkLicenseplist {
              versionId = "1_2_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_2_1 = mkLicenseplist {
              versionId = "1_2_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_0 = mkLicenseplist {
              versionId = "1_3_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_1 = mkLicenseplist {
              versionId = "1_3_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_2 = mkLicenseplist {
              versionId = "1_3_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_4 = mkLicenseplist {
              versionId = "1_3_4";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_5 = mkLicenseplist {
              versionId = "1_3_5";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_6 = mkLicenseplist {
              versionId = "1_3_6";
              platforms = supportedPlatforms;
            };
            licenseplist_1_3_7 = mkLicenseplist {
              versionId = "1_3_7";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_0 = mkLicenseplist {
              versionId = "1_4_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_1 = mkLicenseplist {
              versionId = "1_4_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_2 = mkLicenseplist {
              versionId = "1_4_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_3 = mkLicenseplist {
              versionId = "1_4_3";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_4 = mkLicenseplist {
              versionId = "1_4_4";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_5 = mkLicenseplist {
              versionId = "1_4_5";
              platforms = supportedPlatforms;
            };
            licenseplist_1_4_6 = mkLicenseplist {
              versionId = "1_4_6";
              platforms = supportedPlatforms;
            };
            licenseplist_1_5_0 = mkLicenseplist {
              versionId = "1_5_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_5_1 = mkLicenseplist {
              versionId = "1_5_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_5_3 = mkLicenseplist {
              versionId = "1_5_3";
              platforms = supportedPlatforms;
            };
            licenseplist_1_6_0 = mkLicenseplist {
              versionId = "1_6_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_6_1 = mkLicenseplist {
              versionId = "1_6_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_6_2 = mkLicenseplist {
              versionId = "1_6_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_0 = mkLicenseplist {
              versionId = "1_7_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_1 = mkLicenseplist {
              versionId = "1_7_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_2 = mkLicenseplist {
              versionId = "1_7_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_3 = mkLicenseplist {
              versionId = "1_7_3";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_4 = mkLicenseplist {
              versionId = "1_7_4";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_5 = mkLicenseplist {
              versionId = "1_7_5";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_6 = mkLicenseplist {
              versionId = "1_7_6";
              platforms = supportedPlatforms;
            };
            licenseplist_1_7_8 = mkLicenseplist {
              versionId = "1_7_8";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_0 = mkLicenseplist {
              versionId = "1_8_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_1 = mkLicenseplist {
              versionId = "1_8_1";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_2 = mkLicenseplist {
              versionId = "1_8_2";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_3 = mkLicenseplist {
              versionId = "1_8_3";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_5 = mkLicenseplist {
              versionId = "1_8_5";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_6 = mkLicenseplist {
              versionId = "1_8_6";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_7 = mkLicenseplist {
              versionId = "1_8_7";
              platforms = supportedPlatforms;
            };
            licenseplist_1_8_8 = mkLicenseplist {
              versionId = "1_8_8";
              platforms = supportedPlatforms;
            };
            licenseplist_1_9_0 = mkLicenseplist {
              versionId = "1_9_0";
              platforms = supportedPlatforms;
            };
            licenseplist_1_9_1 = mkLicenseplist {
              versionId = "1_9_1";
              platforms = supportedPlatforms;
            };
            licenseplist_2_0_0 = mkLicenseplist {
              versionId = "2_0_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_1_0 = mkLicenseplist {
              versionId = "2_1_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_3_0 = mkLicenseplist {
              versionId = "2_3_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_3_1 = mkLicenseplist {
              versionId = "2_3_1";
              platforms = supportedPlatforms;
            };
            licenseplist_2_3_2 = mkLicenseplist {
              versionId = "2_3_2";
              platforms = supportedPlatforms;
            };
            licenseplist_2_4_0 = mkLicenseplist {
              versionId = "2_4_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_5_0 = mkLicenseplist {
              versionId = "2_5_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_5_6 = mkLicenseplist {
              versionId = "2_5_6";
              platforms = supportedPlatforms;
            };
            licenseplist_2_5_7 = mkLicenseplist {
              versionId = "2_5_7";
              platforms = supportedPlatforms;
            };
            licenseplist_2_5_8 = mkLicenseplist {
              versionId = "2_5_8";
              platforms = supportedPlatforms;
            };
            licenseplist_2_6_0 = mkLicenseplist {
              versionId = "2_6_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_7_0 = mkLicenseplist {
              versionId = "2_7_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_7_1 = mkLicenseplist {
              versionId = "2_7_1";
              platforms = supportedPlatforms;
            };
            licenseplist_2_7_2 = mkLicenseplist {
              versionId = "2_7_2";
              platforms = supportedPlatforms;
            };
            licenseplist_2_7_3 = mkLicenseplist {
              versionId = "2_7_3";
              platforms = supportedPlatforms;
            };
            licenseplist_2_8_0 = mkLicenseplist {
              versionId = "2_8_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_8_1 = mkLicenseplist {
              versionId = "2_8_1";
              platforms = supportedPlatforms;
            };
            licenseplist_2_9_0 = mkLicenseplist {
              versionId = "2_9_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_10_0 = mkLicenseplist {
              versionId = "2_10_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_11_2 = mkLicenseplist {
              versionId = "2_11_2";
              platforms = supportedPlatforms;
            };
            licenseplist_2_11_3 = mkLicenseplist {
              versionId = "2_11_3";
              platforms = supportedPlatforms;
            };
            licenseplist_2_11_4 = mkLicenseplist {
              versionId = "2_11_4";
              platforms = supportedPlatforms;
            };
            licenseplist_2_12_0 = mkLicenseplist {
              versionId = "2_12_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_13_0 = mkLicenseplist {
              versionId = "2_13_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_14_0 = mkLicenseplist {
              versionId = "2_14_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_15_0 = mkLicenseplist {
              versionId = "2_15_0";
              platforms = supportedPlatforms;
            };
            licenseplist_2_15_1 = mkLicenseplist {
              versionId = "2_15_1";
              platforms = supportedPlatforms;
            };
            licenseplist_2_16_0 = mkLicenseplist {
              versionId = "2_16_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_0 = mkLicenseplist {
              versionId = "3_0_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_1 = mkLicenseplist {
              versionId = "3_0_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_2 = mkLicenseplist {
              versionId = "3_0_2";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_3 = mkLicenseplist {
              versionId = "3_0_3";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_4 = mkLicenseplist {
              versionId = "3_0_4";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_5 = mkLicenseplist {
              versionId = "3_0_5";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_6 = mkLicenseplist {
              versionId = "3_0_6";
              platforms = supportedPlatforms;
            };
            licenseplist_3_0_7 = mkLicenseplist {
              versionId = "3_0_7";
              platforms = supportedPlatforms;
            };
            licenseplist_3_11_0 = mkLicenseplist {
              versionId = "3_11_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_12_0 = mkLicenseplist {
              versionId = "3_12_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_13_0 = mkLicenseplist {
              versionId = "3_13_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_14_2 = mkLicenseplist {
              versionId = "3_14_2";
              platforms = supportedPlatforms;
            };
            licenseplist_3_14_4 = mkLicenseplist {
              versionId = "3_14_4";
              platforms = supportedPlatforms;
            };
            licenseplist_3_15_0 = mkLicenseplist {
              versionId = "3_15_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_16_0 = mkLicenseplist {
              versionId = "3_16_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_17_0 = mkLicenseplist {
              versionId = "3_17_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_18_0 = mkLicenseplist {
              versionId = "3_18_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_19_0 = mkLicenseplist {
              versionId = "3_19_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_19_1 = mkLicenseplist {
              versionId = "3_19_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_19_2 = mkLicenseplist {
              versionId = "3_19_2";
              platforms = supportedPlatforms;
            };
            licenseplist_3_20_0 = mkLicenseplist {
              versionId = "3_20_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_21_0 = mkLicenseplist {
              versionId = "3_21_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_21_1 = mkLicenseplist {
              versionId = "3_21_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_22_0 = mkLicenseplist {
              versionId = "3_22_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_22_2 = mkLicenseplist {
              versionId = "3_22_2";
              platforms = supportedPlatforms;
            };
            licenseplist_3_22_3 = mkLicenseplist {
              versionId = "3_22_3";
              platforms = supportedPlatforms;
            };
            licenseplist_3_22_4 = mkLicenseplist {
              versionId = "3_22_4";
              platforms = supportedPlatforms;
            };
            licenseplist_3_22_5 = mkLicenseplist {
              versionId = "3_22_5";
              platforms = supportedPlatforms;
            };
            licenseplist_3_23_3 = mkLicenseplist {
              versionId = "3_23_3";
              platforms = supportedPlatforms;
            };
            licenseplist_3_23_4 = mkLicenseplist {
              versionId = "3_23_4";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_1 = mkLicenseplist {
              versionId = "3_24_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_2 = mkLicenseplist {
              versionId = "3_24_2";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_3 = mkLicenseplist {
              versionId = "3_24_3";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_5 = mkLicenseplist {
              versionId = "3_24_5";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_8 = mkLicenseplist {
              versionId = "3_24_8";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_9 = mkLicenseplist {
              versionId = "3_24_9";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_10 = mkLicenseplist {
              versionId = "3_24_10";
              platforms = supportedPlatforms;
            };
            licenseplist_3_24_11 = mkLicenseplist {
              versionId = "3_24_11";
              platforms = supportedPlatforms;
            };
            licenseplist_3_25_0 = mkLicenseplist {
              versionId = "3_25_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_25_1 = mkLicenseplist {
              versionId = "3_25_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_26_0 = mkLicenseplist {
              versionId = "3_26_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_27_0 = mkLicenseplist {
              versionId = "3_27_0";
              platforms = supportedPlatforms;
            };
            licenseplist_3_27_1 = mkLicenseplist {
              versionId = "3_27_1";
              platforms = supportedPlatforms;
            };
            licenseplist_3_27_2 = mkLicenseplist {
              versionId = "3_27_2";
              platforms = supportedPlatforms;
            };

            licenseplist_1_0 = licenseplist_1_0_3;
            licenseplist_1_1 = licenseplist_1_1_0;
            licenseplist_1_2 = licenseplist_1_2_1;
            licenseplist_1_3 = licenseplist_1_3_7;
            licenseplist_1_4 = licenseplist_1_4_6;
            licenseplist_1_5 = licenseplist_1_5_3;
            licenseplist_1_6 = licenseplist_1_6_2;
            licenseplist_1_7 = licenseplist_1_7_8;
            licenseplist_1_8 = licenseplist_1_8_8;
            licenseplist_1_9 = licenseplist_1_9_1;
            licenseplist_2_0 = licenseplist_2_0_0;
            licenseplist_2_1 = licenseplist_2_1_0;
            licenseplist_2_3 = licenseplist_2_3_2;
            licenseplist_2_4 = licenseplist_2_4_0;
            licenseplist_2_5 = licenseplist_2_5_8;
            licenseplist_2_6 = licenseplist_2_6_0;
            licenseplist_2_7 = licenseplist_2_7_3;
            licenseplist_2_8 = licenseplist_2_8_1;
            licenseplist_2_9 = licenseplist_2_9_0;
            licenseplist_2_10 = licenseplist_2_10_0;
            licenseplist_2_11 = licenseplist_2_11_4;
            licenseplist_2_12 = licenseplist_2_12_0;
            licenseplist_2_13 = licenseplist_2_13_0;
            licenseplist_2_14 = licenseplist_2_14_0;
            licenseplist_2_15 = licenseplist_2_15_1;
            licenseplist_2_16 = licenseplist_2_16_0;
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
            licenseplist_1 = licenseplist_1_9_1;
            licenseplist_2 = licenseplist_2_16_0;
            licenseplist_3 = licenseplist_3_27_2;
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
