cask "agentvm" do
  version "1.2.0"
  sha256 "f1a0f4c01f57d86f91ee6e0daf42664a6dba548ef4af475f71f80a97aaac253c"

  url "https://github.com/zxu756/AgentVM/releases/download/v#{version}/AgentVM-v#{version}-macos-arm64.zip"
  name "AgentVM"
  desc "APFS Copy-on-Write disk & snapshot lineage manager, ISO builder, and CLI/MCP"
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
