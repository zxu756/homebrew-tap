cask "citestudio" do
  version "0.1.0"
  sha256 "21c61832702743787265f33b4771663ff8058528843bacd2fc305913bb0df020"

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
