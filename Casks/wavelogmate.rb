cask "wavelogmate" do
  version "1.2.1"
  sha256 "f0110dd2bac40097988df7434c9a731736df576089c271ce783559a33e15e53b"

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
