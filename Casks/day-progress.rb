cask "day-progress" do
  version "1.0.1"
  sha256 "38636ef64b45b741da2e4a02fe7c16f85a2537626b38b636d8c824a303ba0b80"

  url "https://vd-cafe.pages.dev/api/homebrew/day-progress/#{version}.dmg"
  name "Day Progress"
  desc "Menu bar indicator showing how much of today has passed"
  homepage "https://vd-cafe.pages.dev/day-progress/"

  livecheck do
    skip "Versioned releases are maintained in this tap"
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Day Progress.app"

  uninstall quit: "com.vedant.dayprogress"

  zap trash: "~/Library/Preferences/com.vedant.dayprogress.plist"
end
