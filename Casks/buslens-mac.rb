cask "buslens-mac" do
  version "0.3.0"
  sha256 "3346f44504b46b91102208f4dfe559d5d2d254dc3b92acbc59c1f1d57f975f08"

  url "https://github.com/zxu756/BusLensMac/releases/download/v#{version}/BusLensMac-v#{version}-macos-arm64.zip"
  name "BusLens Mac"
  desc "Lists Thunderbolt, USB4 and USB devices with each one's negotiated link speed"
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
