cask "scholaros" do
  version "1.1.0"
  sha256 "34108477e5db3c12ccf4b653952ac82142c1ae9f98a1c12e832857f67c624352"

  url "https://github.com/zxu756/ScholarOS/releases/download/v#{version}/ScholarOS-v#{version}-macos-arm64.zip"
  name "ScholarOS"
  desc "Zero-hallucination LaTeX & Typst academic IDE, PRISMA 2020 screener & citation provenance LSP"
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
