cask "chronomac" do
  version "0.2.0"
  sha256 "fcf8eb3d273394a6e40f0f01fb99e53c09740a66d8c2377ac36416364c5d51f6"

  url "https://github.com/zxu756/ChronoMac/releases/download/v#{version}/ChronoMac-v#{version}-macos-arm64.zip"
  name "ChronoMac"
  desc "7-day macOS system flight recorder, 5-track DVR oscilloscope & socket ledger"
  homepage "https://github.com/zxu756/ChronoMac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ChronoMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ChronoMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ChronoMac",
    "~/Library/Preferences/io.github.zxu756.ChronoMac.plist",
  ]
end
