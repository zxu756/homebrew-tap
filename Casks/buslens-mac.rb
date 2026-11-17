cask "buslens-mac" do
  version "0.4.0"
  sha256 "e6c62358a78f47830dd70d6cc286605472090b9bb92b324c99aa089374dae3ec"

  url "https://github.com/zxu756/BusLensMac/releases/download/v#{version}/BusLensMac-v#{version}-macos-arm64.zip"
  name "BusLens Mac"
  desc "Lists Thunderbolt, USB4 and USB devices with negotiated link speed and port"
  homepage "https://github.com/zxu756/BusLensMac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "BusLensMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/BusLensMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/local.xu.BusLensMac.plist",
  ]
end
