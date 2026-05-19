cask "wavelogmate" do
  version "1.1.2"
  sha256 "6f4c9199d794e46e4831eb5c760e45007151cc0f62b3bfa933d70eefcea46681"

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
