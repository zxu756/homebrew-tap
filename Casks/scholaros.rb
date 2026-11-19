cask "scholaros" do
  version "1.4.1"
  sha256 "e4fe502eae3efa4714f5457383f318dbc169c1aeb9a67287b919d9b7a8da95ab"

  url "https://github.com/zxu756/ScholarOS/releases/download/v#{version}/ScholarOS-v#{version}-macos-arm64.zip"
  name "ScholarOS"
  desc "Checks LaTeX manuscripts and .bib references against Crossref, OpenAlex and more"
  homepage "https://github.com/zxu756/ScholarOS"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "ScholarOS.app"
  binary "#{appdir}/ScholarOS.app/Contents/MacOS/ScholarOS", target: "scholaros"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/ScholarOS.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Preferences/io.github.zxu756.ScholarOS.plist",
  ]
end
