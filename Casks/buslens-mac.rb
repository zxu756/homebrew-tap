cask "buslens-mac" do
  version "0.2.0"
  sha256 "527a19be5ce5d27c725261a2e894e2604be4ad74d32f6ec47036bf9e2943dcce"

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
