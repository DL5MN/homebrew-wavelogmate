cask "wavelogmate" do
  version "1.2.2"
  sha256 "a315a7bd89a7fb2f23a76bc2b7973b29c3e922597ca95baf890a57a6b2e9c2a0"

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
