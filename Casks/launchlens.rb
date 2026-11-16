cask "launchlens" do
  version "0.3.0"
  sha256 "bde093807f2f90679b61b080e4a72f2c55d710f0c441f9134dda29e781dbe6a1"

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
