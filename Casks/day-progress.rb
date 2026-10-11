cask "day-progress" do
  version "1.0"
  sha256 "d9521671c44baa70814fbcf817510c7f5c62483d9cc71f1e4a351a7ee8d3240b"

  url "https://vd-cafe.pages.dev/downloads/day-progress-#{version}-mac-arm64.dmg"
  name "Day Progress"
  desc "Day progress indicator for the menu bar"
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
