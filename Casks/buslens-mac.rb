cask "buslens-mac" do
  version "0.1.0"
  sha256 "46e50063d5a58c38b2a0aa90e8bb861f2b91ed6128feccc9965ac6ddb08695ae"

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
