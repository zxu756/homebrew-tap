cask "launchlens" do
  version "0.3.0"
  sha256 "12f7ae43f88bb69a3f89f883b296a874718d72ef6cad7c2eaf900ab90cea9af6"

  url "https://github.com/zxu756/LaunchLens/releases/download/v#{version}/LaunchLens-v#{version}-macos-arm64.zip"
  name "LaunchLens"
  desc "List launchd startup items and freeze or restore user LaunchAgents"
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
