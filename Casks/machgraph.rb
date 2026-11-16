cask "machgraph" do
  version "1.3.0"
  sha256 "f83c26d6751b5b25de962acbacd3b5f024bd51c08c7abb59904b1fbece575eb5"

  url "https://github.com/zxu756/MachGraph/releases/download/v#{version}/MachGraph-v#{version}-macos-arm64.zip"
  name "MachGraph"
  desc "Pure-Swift ARM64/ARM64e disassembler, Mach-O binary inspector, and MCP server"
  homepage "https://github.com/zxu756/MachGraph"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "MachGraph.app"
  binary "#{appdir}/MachGraph.app/Contents/MacOS/MachGraph", target: "machgraph"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MachGraph.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.zxu756.MachGraph.plist",
  ]
end
