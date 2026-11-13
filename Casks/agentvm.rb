cask "agentvm" do
  version "1.1.0"
  sha256 "acafcf6a97646b3cf198bda49e2fd45656754db1cdc95f127847279698c29cfa"

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
    "~/Library/Preferences/io.github.zxu756.AgentVM.plist",
  ]
end
