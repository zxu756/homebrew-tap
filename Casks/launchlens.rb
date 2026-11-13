cask "launchlens" do
  version "0.2.0"
  sha256 "68708eb52bd35043c02a396ed5136336607ce69a8cab7c9a6f0d5236f92d0f7a"

  url "https://github.com/zxu756/LaunchLens/releases/download/v#{version}/LaunchLens-v#{version}-macos-arm64.zip"
  name "LaunchLens"
  desc "Native LaunchAgents, LaunchDaemons & orphaned AI daemon RSS ledger with reversible freeze"
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
