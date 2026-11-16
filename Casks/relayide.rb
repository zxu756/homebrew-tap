cask "relayide" do
  version "1.3.0"
  sha256 "de25edf6bf33e62892748b03d86f74e505ac8edbf66397d46a2b2353c449d567"

  url "https://github.com/zxu756/RelayIDE/releases/download/v#{version}/RelayIDE-v#{version}-macos-arm64.zip"
  name "RelayIDE"
  desc "Runs coding-agent CLIs in git worktrees via agent-relay; workspace store and MCP"
  homepage "https://github.com/zxu756/RelayIDE"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "RelayIDE.app"
  binary "#{appdir}/RelayIDE.app/Contents/MacOS/RelayIDE", target: "relayide"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/RelayIDE.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.zxu756.RelayIDE.plist",
  ]
end
