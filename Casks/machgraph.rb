cask "machgraph" do
  version "1.0.0"
  sha256 "8a1451e6d6472177e1b484719b04f2b8e1399a74b8aeaf1b251c9b9273ac3dd3"

  url "https://github.com/zxu756/MachGraph/releases/download/v#{version}/MachGraph-v#{version}-macos-arm64.zip"
  name "MachGraph"
  desc "Zero-CLI-wrapper native binary reverse-engineering IDE, ARM64 SSA decompiler & patch workbench"
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
