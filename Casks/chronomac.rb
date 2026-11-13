cask "chronomac" do
  version "0.1.0"
  sha256 "a598863d9322709218cfcc87b3d3289def42bcf692092016a589d90671d833c8"

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
