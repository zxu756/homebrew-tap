cask "machgraph" do
  version "1.7.0"
  sha256 "a9aa010a621de86589d89a49f76165fdf48c12eb428aa8b8fe3508963cc0f15e"

  url "https://github.com/zxu756/MachGraph/releases/download/v#{version}/MachGraph-v#{version}-macos-arm64.zip"
  name "MachGraph"
  desc "ARM64/ARM64e disassembler, CFG, Mach-O inspector, demangler, and MCP server"
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
