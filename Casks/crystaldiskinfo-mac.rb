cask "crystaldiskinfo-mac" do
  version "0.1.0"
  sha256 "7a6b2bfce8a75f6dcf2ca85a9d40b4ec4f36deebfc1c0677e6c83a0891f6fa89"

  url "https://github.com/zxu756/CrystalDiskInfoMac/releases/download/v#{version}/CrystalDiskInfoMac-v#{version}-macos-arm64.zip"
  name "CrystalDiskInfo Mac"
  desc "Native SwiftUI disk health and SMART monitor powered by smartctl"
  homepage "https://github.com/zxu756/CrystalDiskInfoMac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64
  depends_on formula: "smartmontools"

  app "CrystalDiskInfoMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/CrystalDiskInfoMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/CrystalDiskInfoMac",
    "~/Library/Preferences/local.xu.CrystalDiskInfoMac.plist",
  ]
end
