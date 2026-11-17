cask "scholaros" do
  version "1.4.0"
  sha256 "336a4355bd5bd18288ae90d287c87cc3d51e5aa71effbc27aeb90d94ec048142"

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
