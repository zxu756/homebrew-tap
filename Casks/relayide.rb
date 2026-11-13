cask "relayide" do
  version "1.0.0"
  sha256 "7d11583b4fd68b8bd05971878e0df4e16b49a6681f24ae6366d869428b8bcc22"

  url "https://github.com/zxu756/RelayIDE/releases/download/v#{version}/RelayIDE-v#{version}-macos-arm64.zip"
  name "RelayIDE"
  desc "Multi-vendor coding agent parallel workbench, 3-way semantic AST merger & wiretap proxy"
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
