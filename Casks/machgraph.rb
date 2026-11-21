cask "machgraph" do
  version "1.5.0"
  sha256 "5cb35ce0ba2c789336ed6697d2f9d222f09a7602986fd6c005a6700f7a8fa05d"

  url "https://github.com/zxu756/MachGraph/releases/download/v#{version}/MachGraph-v#{version}-macos-arm64.zip"
  name "MachGraph"
  desc "ARM64/ARM64e disassembler, Mach-O inspector, symbol demangler, and MCP server"
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
