cask "autopsymac" do
  version "0.3.0"
  sha256 "709b51ef05b23888acecc5aab4eb3ea4556ed0b9c84446676e734397b8bc7cc0"

  url "https://github.com/zxu756/AutopsyMac/releases/download/v#{version}/AutopsyMac-v#{version}-macos-arm64.zip"
  name "AutopsyMac"
  desc "Read-only macOS .app inspector: size treemap, linked dylibs and entitlements"
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
