cask "day-progress" do
  version "1.0.3"
  sha256 "a40a3537cd5908a1f90ee57ffa635ddc3c8aa7bc1746bb5ef179eb5b76a0834c"

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
