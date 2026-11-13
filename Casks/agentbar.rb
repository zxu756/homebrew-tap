cask "agentbar" do
  version "0.2.0"
  sha256 "9cef84b77102be3cec1b617d6e02f997e0081933315894c830de932f813450e8"

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
