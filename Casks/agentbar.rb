cask "agentbar" do
  version "0.1.0"
  sha256 "1388014a36a55b1976e7d8eeab3d77f90ebb6252e5b51d35e967d4646cbe3b50"

  url "https://github.com/zxu756/AgentBar/releases/download/v#{version}/AgentBar-v#{version}-macos-arm64.zip"
  name "AgentBar"
  desc "Menu bar and Swift Charts local telemetry monitor for multi-agent coding CLIs"
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
