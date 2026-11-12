cask "agentbar" do
  version "0.1.0"
  sha256 "fe4c19f84d49f9ca4ac339cd8772e95d6bd49cd5fff542cf794ae913759ff7a1"

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
