cask "chronomac" do
  version "0.4.0"
  sha256 "8a2ae1dc01d536f6bf0bf20888a8f5b6aa64d26391ae1ccd26e7cb9a22f64085"

  url "https://github.com/zxu756/ChronoMac/releases/download/v#{version}/ChronoMac-v#{version}-macos-arm64.zip"
  name "ChronoMac"
  desc "Records CPU, memory and network over time, in-app or headless, to trace spikes"
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
