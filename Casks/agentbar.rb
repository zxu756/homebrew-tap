cask "agentbar" do
  version "0.3.0"
  sha256 "8ff8f4a71423da4678c419950b3763c69b3f3e8e319b74390853036d59bc350f"

  url "https://github.com/zxu756/AgentBar/releases/download/v#{version}/AgentBar-v#{version}-macos-arm64.zip"
  name "AgentBar"
  desc "Read-only menu bar and CLI ledger of local coding-agent token usage"
  homepage "https://github.com/zxu756/AgentBar"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AgentBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AgentBar.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/local.xu.AgentBar.plist",
  ]
end
