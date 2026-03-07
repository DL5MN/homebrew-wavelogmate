cask "wavelogmoat" do
  version "0.1.0"
  sha256 "77574b0fbaa697480541e552abb440f46aba9c9ab530f6f6a4a8bb79d2024c15"

  url "https://github.com/dl5mn/WaveLogMoat/releases/download/v#{version}/WaveLogMoat-v#{version}.dmg"
  name "WaveLogMoat"
  desc "Native macOS menu bar app for automatic QSO logging from WSJT-X to Wavelog"
  homepage "https://github.com/dl5mn/WaveLogMoat"

  depends_on macos: ">= :sonoma"

  app "WaveLogMoat.app"

  zap trash: [
    "~/Library/Preferences/com.dl5mn.WaveLogMoat.plist",
    "~/Library/Caches/com.dl5mn.WaveLogMoat",
  ]
end
