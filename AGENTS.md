# AGENTS.md

## Build / Development Commands

```bash
# Regenerate source metadata
nix develop --command nvfetcher -c packages/nvfetcher.toml -o packages/_sources

# Validate all supported platforms
nix flake check --all-systems

# Build a specific version
nix build .#licenseplist_X_Y_Z
```

## Adding a New Version

The primary task in this repository is packaging new LicensePlist releases.

1. Check available releases: `gh release list --repo mono0926/LicensePlist`
2. Add a new `darwin` entry to `packages/nvfetcher.toml`
3. Regenerate `packages/_sources/`: `nix develop --command nvfetcher -c packages/nvfetcher.toml -o packages/_sources`
4. Add the package to `flake.nix` and update aliases
5. Update `README.md`
6. Validate all platforms: `nix flake check --all-systems`
7. Verify the build: `nix build`

## Naming Conventions

- Package names in `flake.nix` use underscore separators, for example `licenseplist_3_27_2`

## Alias Conventions

- `licenseplist_X_Y` = latest patch of that minor series
- `licenseplist_X` = latest release of that major series
- `licenseplist` / `default` = overall latest release

## Notes

- Do not manually edit files under `packages/_sources/` — they are managed by `nvfetcher`
- Supported platforms are `x86_64-darwin` and `aarch64-darwin`
