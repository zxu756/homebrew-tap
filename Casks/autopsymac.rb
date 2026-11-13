cask "autopsymac" do
  version "0.1.0"
  sha256 "2113dc439ce664ed3b29cc4d2d858804af37e51e281a11fcf2f576b83edc6bb3"

  url "https://github.com/zxu756/AutopsyMac/releases/download/v#{version}/AutopsyMac-v#{version}-macos-arm64.zip"
  name "AutopsyMac"
  desc "Read-only macOS app, Universal Mach-O, Electron ASAR & WASM anatomy workbench"
  homepage "https://github.com/zxu756/AutopsyMac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "AutopsyMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/AutopsyMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/AutopsyMac",
    "~/Library/Preferences/io.github.zxu756.AutopsyMac.plist",
  ]
end
