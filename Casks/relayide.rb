cask "relayide" do
  version "1.1.0"
  sha256 "1205e199d4701d0f181a535c0ed81650f4fdbbecc77cda3b65f7efda6a50b1f4"

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
