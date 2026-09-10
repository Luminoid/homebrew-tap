# Luminoid/homebrew-tap

Homebrew formulae and casks for [Luminoid](https://luminoid.dev)'s Mac tools. Install by fully qualified name; Homebrew 6 trusts that one formula or cask on first install, no separate `brew tap` step needed.

| Package | Kind | Install | What it is |
|---------|------|---------|------------|
| [Tethersnap](https://github.com/Luminoid/Tethersnap) | Cask | `brew install --cask luminoid/tap/tethersnap` | Mac app + CLI that export Nintendo Switch 2 screenshots and videos over USB (macOS 15+, notarized DMG) |
| [Monolith](https://github.com/Luminoid/Monolith) | Formula | `brew install luminoid/tap/monolith` | Swift CLI that scaffolds iOS apps, Swift Packages, and Swift CLIs (builds from source; needs Xcode 26) |

To use short names (`brew install monolith`, `brew upgrade tethersnap`), trust the tap once:

```bash
brew trust luminoid/tap && brew tap luminoid/tap
```

A bare `brew tap luminoid/tap` without the trust step fails on Homebrew 6 with "invalid syntax in tap"; that is the [tap-trust gate](https://docs.brew.sh/Tap-Trust), not a broken tap.

## Updating

- **Tethersnap**: after a release, bump `version` and `sha256` in `Casks/tethersnap.rb` (`shasum -a 256 Tethersnap-<version>.dmg`). `brew livecheck --cask tethersnap` reports when the GitHub release is newer than the cask.
- **Monolith**: bump `url` and `sha256` in `Formula/monolith.rb` (`curl -sL <tarball> | shasum -a 256`).
- Check with `brew audit --cask tethersnap`, `brew audit --strict monolith`, and `brew style .` before pushing.

## License

MIT. The packaged software keeps its own license (Tethersnap: MIT, Monolith: Apache-2.0).
