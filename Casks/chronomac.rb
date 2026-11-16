cask "chronomac" do
  version "0.3.0"
  sha256 "a6e56d579bc02501786dd875b3d7754e379fbb4e5ffc8afdf68b3782a5732cb9"

  url "https://github.com/zxu756/ChronoMac/releases/download/v#{version}/ChronoMac-v#{version}-macos-arm64.zip"
  name "ChronoMac"
  desc "macOS app that records CPU, memory and network over time to trace spikes"
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
