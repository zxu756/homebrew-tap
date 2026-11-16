cask "agentvm" do
  version "1.3.0"
  sha256 "436ae94ff7bbba4a440670d7402328f173f45dc3b52040064a8d74892bab26c2"

  url "https://github.com/zxu756/AgentVM/releases/download/v#{version}/AgentVM-v#{version}-macos-arm64.zip"
  name "AgentVM"
  desc "Boots Debian 12 guests for one-shot commands; APFS disks, snapshots, CLI and MCP"
  homepage "https://github.com/zxu756/AgentVM"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AgentVM.app"
  binary "#{appdir}/AgentVM.app/Contents/MacOS/AgentVM", target: "agentvm"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AgentVM.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.zxu756.AgentVM.plist",
  ]
end
