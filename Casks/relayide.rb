cask "relayide" do
  version "1.4.0"
  sha256 "608fcfc75551cecdc2188c9ae738b33913268178f9ff5e8201737f5847c7129a"

  url "https://github.com/zxu756/RelayIDE/releases/download/v#{version}/RelayIDE-v#{version}-macos-arm64.zip"
  name "RelayIDE"
  desc "Runs coding-agent CLIs in git worktrees via agent-relay, merges and verifies"
  homepage "https://github.com/zxu756/RelayIDE"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "RelayIDE.app"
  binary "#{appdir}/RelayIDE.app/Contents/MacOS/RelayIDE", target: "relayide"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/RelayIDE.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.zxu756.RelayIDE.plist",
  ]
end
