cask "launchlens" do
  version "0.5.0"
  sha256 "48d148cf73cc0ddd3d314de72e5a9c12bdfc954c4d522c9894a98b1b72eaaa2a"

  url "https://github.com/zxu756/LaunchLens/releases/download/v#{version}/LaunchLens-v#{version}-macos-arm64.zip"
  name "LaunchLens"
  desc "List launchd items and orphans, diff session snapshots, freeze LaunchAgents"
  homepage "https://github.com/zxu756/LaunchLens"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "LaunchLens.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/LaunchLens.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/LaunchLens",
    "~/Library/Preferences/local.xu.LaunchLens.plist",
  ]
end
