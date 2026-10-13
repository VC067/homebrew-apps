# esc cafe apps for Homebrew

Homebrew installation recipes for apps made by Vedant.
This repository contains package metadata; app source lives in separate repositories.

## Day Progress

Requires macOS 14 or newer on Apple silicon, with Homebrew installed.

```sh
brew install --cask vc067/apps/day-progress
```

Open **Day Progress** from Applications after installation.

```sh
brew upgrade --cask vc067/apps/day-progress
brew uninstall --cask vc067/apps/day-progress
```

Normal uninstall keeps app preferences. To remove preferences too:

```sh
brew uninstall --zap --cask vc067/apps/day-progress
```

[App overview](https://esc-cafe.pages.dev/day-progress/)

## Maintaining a release

1. Publish a new versioned DMG at the public website download URL.
2. Update `version` and `sha256` in `Casks/day-progress.rb` to match that exact file.
3. Verify the bundle version, architecture, macOS requirement and install behavior.
4. Commit and push the updated recipe. Users can then run the upgrade command.

Keep previous versioned download URLs available and never replace a released DMG
with different bytes at the same URL. Recipe updates must not contain credentials.

Homebrew uses a dedicated download URL that redirects to the public DMG. Its
request totals are measured separately from website button clicks. Cached
downloads may produce no request, and retries may produce multiple requests.
Neither these totals nor copying the command verifies an installation.
