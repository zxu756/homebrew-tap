cask "buslens-mac" do
  version "0.1.0"
  sha256 "8e38459d58df70a54f1a8e7182b74ea3b1d1d545c945956c06ff9c1822cbb183"

  url "https://github.com/zxu756/BusLensMac/releases/download/v#{version}/BusLensMac-v#{version}-macos-arm64.zip"
  name "BusLens Mac"
  desc "Thunderbolt, USB4 & USB-C negotiated link-speed and cable bottleneck analyzer"
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
