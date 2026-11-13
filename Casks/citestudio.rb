cask "citestudio" do
  version "0.2.0"
  sha256 "6b2209257d28e01b8ac706fb1f14dd0559b217b169cb5fbfc446243f31cf80d5"

  url "https://github.com/zxu756/CiteStudio/releases/download/v#{version}/CiteStudio-v#{version}-macos-arm64.zip"
  name "CiteStudio"
  desc "Zero-hallucination LaTeX & Typst academic evidence IDE with Citation Firewall"
  homepage "https://github.com/zxu756/CiteStudio"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "CiteStudio.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/CiteStudio.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/CiteStudio",
    "~/Library/Preferences/io.github.zxu756.CiteStudio.plist",
  ]
end
