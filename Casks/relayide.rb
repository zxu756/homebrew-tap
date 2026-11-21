cask "relayide" do
  version "1.5.0"
  sha256 "dcb346b4a41a7921a505c2aa9539cbe1d4f25504b9d44266ba93178b6b739655"

  url "https://github.com/zxu756/RelayIDE/releases/download/v#{version}/RelayIDE-v#{version}-macos-arm64.zip"
  name "RelayIDE"
  desc "Runs coding-agent CLIs in git worktrees via agent-relay, merges and verifies"
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
