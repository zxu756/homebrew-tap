cask "agentvm" do
  version "1.5.0"
  sha256 "90cdd0e19637b5a8d8a8d69923f579d2ba27ffe857ccfe82a2f34422187d2fdb"

  url "https://github.com/zxu756/AgentVM/releases/download/v#{version}/AgentVM-v#{version}-macos-arm64.zip"
  name "AgentVM"
  desc "Debian 12 VMs with CoW fork, snapshots, VirtioFS, port forwarding, CLI and MCP"
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
