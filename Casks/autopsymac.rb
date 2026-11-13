cask "autopsymac" do
  version "0.2.0"
  sha256 "395598a530fa7b269c9170d41f6a67b750e7c41d4d068308a368a30e4ad12b1b"

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
