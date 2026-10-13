cask "day-progress" do
  version "1.0.4"
  sha256 "afff107c0505f0bb8f5a62b496ace2f1f63d962d8f718b65c8fa55d48b528487"

  url "https://esc-cafe.pages.dev/api/homebrew/day-progress/#{version}.dmg"
  name "Day Progress"
  desc "Menu bar indicator showing how much of today has passed"
  homepage "https://esc-cafe.pages.dev/day-progress/"

  livecheck do
    skip "Versioned releases are maintained in this tap"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Day Progress.app"

  uninstall quit: "com.vedant.dayprogress"

  zap trash: "~/Library/Preferences/com.vedant.dayprogress.plist"
end
