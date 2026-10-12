cask "day-progress" do
  version "1.0.2"
  sha256 "5eab261b6224549dd0d38b9d7cadcb033dec583dd02f723c9643a95059d7e573"

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
