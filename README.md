# Homebrew Tap for Seamerge

[Seamerge](https://www.seamerge.app) is a native diff and merge tool for macOS, built for Git.

```sh
brew install --cask cykedev/tap/seamerge
```

This installs Seamerge in the Applications folder and the `seamerge` command, so that you can compare files in Terminal, for example `seamerge old.txt new.txt`.

Seamerge updates itself, so `brew upgrade` leaves it alone unless you add `--greedy`. To remove it, run `brew uninstall --cask seamerge`; with `--zap`, its settings and caches go as well.

The source code is at [cykedev/seamerge](https://github.com/cykedev/seamerge).
