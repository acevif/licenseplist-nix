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
          licenseplist-nix.packages.${system}.licenseplist_3_27_1
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
nix run github:acevif/licenseplist-nix#licenseplist_3_27_1 -- --version
```

You can also use the rolling aliases:

```bash
nix run github:acevif/licenseplist-nix#licenseplist -- --version
```

## Available Packages

### Versions

- `licenseplist_3_27_1` - LicensePlist 3.27.1 (`x86_64-darwin`, `aarch64-darwin`)

### Aliases

- `licenseplist_3_27` - 3.27.x latest (`x86_64-darwin`, `aarch64-darwin`)
- `licenseplist` - latest (`x86_64-darwin`, `aarch64-darwin`)
- `default` - latest (`x86_64-darwin`, `aarch64-darwin`)
