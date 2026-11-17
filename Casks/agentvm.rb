cask "agentvm" do
  version "1.4.0"
  sha256 "d4e19a9972e641496b684f7960ca6f17f2ac92dad4a78c1d9b25f86080df2787"

  url "https://github.com/zxu756/AgentVM/releases/download/v#{version}/AgentVM-v#{version}-macos-arm64.zip"
  name "AgentVM"
  desc "Keeps Debian 12 VMs running between commands; APFS disks, snapshots, CLI and MCP"
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
