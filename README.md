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
- `licenseplist` - latest (`x86_64-darwin`, `aarch64-darwin`)
- `default` - latest (`x86_64-darwin`, `aarch64-darwin`)
