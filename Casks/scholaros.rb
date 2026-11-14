cask "scholaros" do
  version "1.2.0"
  sha256 "8596edcb8a636381d99cb609bf102990b27007ffdabb4dd23bb400a3e34c9ada"

  url "https://github.com/zxu756/ScholarOS/releases/download/v#{version}/ScholarOS-v#{version}-macos-arm64.zip"
  name "ScholarOS"
  desc "Bilingual LaTeX and BibTeX parser, APA/IEEE citation formatter, and MCP server"
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
