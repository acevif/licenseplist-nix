# licenseplist-nix

Versioned [LicensePlist](https://github.com/mono0926/LicensePlist) binary packages for [Nix](https://nixos.org/).

## Usage

### As a flake input

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    licenseplist-nix.url = "github:acevif/licenseplist-nix";
  };

  outputs = { nixpkgs, licenseplist-nix, ... }:
    let
      system = "aarch64-darwin";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = [
          licenseplist-nix.packages.${system}.licenseplist_3_27_2
        ];
      };
    };
}
```

Then run:

```bash
nix develop
license-plist --version
```

### Direct run

```bash
nix run github:acevif/licenseplist-nix#licenseplist_3_27_2 -- --version
```

You can also use the rolling aliases:

```bash
nix run github:acevif/licenseplist-nix#licenseplist -- --version
```

## Available Packages

### Versions

- `licenseplist_3_27_2` - LicensePlist 3.27.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_27_1` - LicensePlist 3.27.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_27_0` - LicensePlist 3.27.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_26_0` - LicensePlist 3.26.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_25_1` - LicensePlist 3.25.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_25_0` - LicensePlist 3.25.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_11` - LicensePlist 3.24.11 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_10` - LicensePlist 3.24.10 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_9` - LicensePlist 3.24.9 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_8` - LicensePlist 3.24.8 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_5` - LicensePlist 3.24.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_3` - LicensePlist 3.24.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_2` - LicensePlist 3.24.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24_1` - LicensePlist 3.24.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_23_4` - LicensePlist 3.23.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_23_3` - LicensePlist 3.23.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22_5` - LicensePlist 3.22.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22_4` - LicensePlist 3.22.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22_3` - LicensePlist 3.22.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22_2` - LicensePlist 3.22.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22_0` - LicensePlist 3.22.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_21_1` - LicensePlist 3.21.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_21_0` - LicensePlist 3.21.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_20_0` - LicensePlist 3.20.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_19_2` - LicensePlist 3.19.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_19_1` - LicensePlist 3.19.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_19_0` - LicensePlist 3.19.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_18_0` - LicensePlist 3.18.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_17_0` - LicensePlist 3.17.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_16_0` - LicensePlist 3.16.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_15_0` - LicensePlist 3.15.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_14_4` - LicensePlist 3.14.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_14_2` - LicensePlist 3.14.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_13_0` - LicensePlist 3.13.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_12_0` - LicensePlist 3.12.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_11_0` - LicensePlist 3.11.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_7` - LicensePlist 3.0.7 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_6` - LicensePlist 3.0.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_5` - LicensePlist 3.0.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_4` - LicensePlist 3.0.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_3` - LicensePlist 3.0.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_2` - LicensePlist 3.0.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_1` - LicensePlist 3.0.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0_0` - LicensePlist 3.0.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_16_0` - LicensePlist 2.16.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_15_1` - LicensePlist 2.15.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_15_0` - LicensePlist 2.15.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_14_0` - LicensePlist 2.14.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_13_0` - LicensePlist 2.13.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_12_0` - LicensePlist 2.12.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_11_4` - LicensePlist 2.11.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_11_3` - LicensePlist 2.11.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_11_2` - LicensePlist 2.11.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_10_0` - LicensePlist 2.10.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_9_0` - LicensePlist 2.9.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_8_1` - LicensePlist 2.8.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_8_0` - LicensePlist 2.8.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_7_3` - LicensePlist 2.7.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_7_2` - LicensePlist 2.7.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_7_1` - LicensePlist 2.7.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_7_0` - LicensePlist 2.7.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_6_0` - LicensePlist 2.6.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_5_8` - LicensePlist 2.5.8 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_5_7` - LicensePlist 2.5.7 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_5_6` - LicensePlist 2.5.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_5_0` - LicensePlist 2.5.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_4_0` - LicensePlist 2.4.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_3_2` - LicensePlist 2.3.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_3_1` - LicensePlist 2.3.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_3_0` - LicensePlist 2.3.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_1_0` - LicensePlist 2.1.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_0_0` - LicensePlist 2.0.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_9_1` - LicensePlist 1.9.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_9_0` - LicensePlist 1.9.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_8` - LicensePlist 1.8.8 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_7` - LicensePlist 1.8.7 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_6` - LicensePlist 1.8.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_5` - LicensePlist 1.8.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_3` - LicensePlist 1.8.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_2` - LicensePlist 1.8.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_1` - LicensePlist 1.8.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8_0` - LicensePlist 1.8.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_8` - LicensePlist 1.7.8 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_6` - LicensePlist 1.7.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_5` - LicensePlist 1.7.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_4` - LicensePlist 1.7.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_3` - LicensePlist 1.7.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_2` - LicensePlist 1.7.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_1` - LicensePlist 1.7.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7_0` - LicensePlist 1.7.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_6_2` - LicensePlist 1.6.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_6_1` - LicensePlist 1.6.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_6_0` - LicensePlist 1.6.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_5_3` - LicensePlist 1.5.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_5_1` - LicensePlist 1.5.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_5_0` - LicensePlist 1.5.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_6` - LicensePlist 1.4.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_5` - LicensePlist 1.4.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_4` - LicensePlist 1.4.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_3` - LicensePlist 1.4.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_2` - LicensePlist 1.4.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_1` - LicensePlist 1.4.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4_0` - LicensePlist 1.4.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_7` - LicensePlist 1.3.7 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_6` - LicensePlist 1.3.6 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_5` - LicensePlist 1.3.5 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_4` - LicensePlist 1.3.4 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_2` - LicensePlist 1.3.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_1` - LicensePlist 1.3.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3_0` - LicensePlist 1.3.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_2_1` - LicensePlist 1.2.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_2_0` - LicensePlist 1.2.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_1_0` - LicensePlist 1.1.0 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_0_3` - LicensePlist 1.0.3 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_0_2` - LicensePlist 1.0.2 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_0_1` - LicensePlist 1.0.1 (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_0_0` - LicensePlist 1.0.0 (`x86_64-darwin`, `aarch64-darwin`)

### Aliases

- `licenseplist_3_27` - 3.27.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_26` - 3.26.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_25` - 3.25.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_24` - 3.24.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_23` - 3.23.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_22` - 3.22.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_21` - 3.21.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_20` - 3.20.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_19` - 3.19.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_18` - 3.18.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_17` - 3.17.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_16` - 3.16.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_15` - 3.15.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_14` - 3.14.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_13` - 3.13.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_12` - 3.12.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_11` - 3.11.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3_0` - 3.0.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_16` - 2.16.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_15` - 2.15.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_14` - 2.14.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_13` - 2.13.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_12` - 2.12.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_11` - 2.11.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_10` - 2.10.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_9` - 2.9.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_8` - 2.8.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_7` - 2.7.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_6` - 2.6.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_5` - 2.5.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_4` - 2.4.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_3` - 2.3.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_1` - 2.1.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2_0` - 2.0.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_9` - 1.9.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_8` - 1.8.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_7` - 1.7.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_6` - 1.6.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_5` - 1.5.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_4` - 1.4.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_3` - 1.3.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_2` - 1.2.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_1` - 1.1.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1_0` - 1.0.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_3` - 3.x.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_2` - 2.x.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist_1` - 1.x.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist` - latest (`x86_64-darwin`, `aarch64-darwin`)
- `default` - latest (`x86_64-darwin`, `aarch64-darwin`)
