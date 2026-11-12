cask "launchlens" do
  version "0.1.0"
  sha256 "8fa92a89588affbafab2f0b24a00581f3e960ab21fee6b2ec71baeb864791366"

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
