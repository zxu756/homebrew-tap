cask "agentvm" do
  version "1.0.0"
  sha256 "a23c5dad532ad646b7c68e6257625f1110e4b244735ecc978bea194992d27995"

  url "https://github.com/zxu756/AgentVM/releases/download/v#{version}/AgentVM-v#{version}-macos-arm64.zip"
  name "AgentVM"
  desc "Native Apple Silicon microVM sandbox, sub-20ms APFS CoW branching & L2 DPI workbench"
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
    "~/Library/Preferences/io.zxu756.AgentVM.plist",
  ]
end
