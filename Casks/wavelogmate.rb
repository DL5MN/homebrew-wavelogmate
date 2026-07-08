cask "wavelogmate" do
  version "1.1.3"
  sha256 "5ed7bc7d22e2b92483c11767e8455f9560ef869da60880a3eea0e9f6377ab7a6"

  url "https://github.com/dl5mn/WaveLogMate/releases/download/v#{version}/WaveLogMate-v#{version}.dmg"
  name "WaveLogMate"
  desc "Native macOS menu bar app for automatic QSO logging from WSJT-X to Wavelog"
  homepage "https://github.com/dl5mn/WaveLogMate"

  depends_on macos: ">= :sonoma"

  app "WaveLogMate.app"

  zap trash: [
    "~/Library/Preferences/de.dl5mn.WaveLogMate.plist",
    "~/Library/Caches/de.dl5mn.WaveLogMate",
  ]
end
