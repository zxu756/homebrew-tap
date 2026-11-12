cask "crystaldiskmark-mac" do
  version "0.1.0"
  sha256 "e09c1cafc15d02fa2368f68e31207b83e2cfa61126ef92ae4b3b5aee37affccc"

  url "https://github.com/zxu756/CrystalDiskMarkMac/releases/download/v#{version}/CrystalDiskMarkMac-v#{version}-macos-arm64.zip"
  name "CrystalDiskMark Mac"
  desc "Native SwiftUI and C++17 POSIX storage benchmark inspired by CrystalDiskMark"
  homepage "https://github.com/zxu756/CrystalDiskMarkMac"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "CrystalDiskMarkMac.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/CrystalDiskMarkMac.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Caches/CrystalDiskMarkMac",
    "~/Library/Preferences/local.xu.CrystalDiskMarkMac.plist",
  ]
end
