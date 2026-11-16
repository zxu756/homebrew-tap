cask "autopsymac" do
  version "0.4.0"
  sha256 "cbfb62593cc9cca2362e143c2445e2b778b7bf0e73075a82d9e5b2e82ded98ee"

  url "https://github.com/zxu756/AutopsyMac/releases/download/v#{version}/AutopsyMac-v#{version}-macos-arm64.zip"
  name "AutopsyMac"
  desc "Read-only macOS .app inspector: scans app.asar, Frameworks, signing, treemap"
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
