cask "scholaros" do
  version "1.3.0"
  sha256 "99e1b949c884411cf2d204b335ed386166453e04a20ba3416a39a6f9d726fa19"

  url "https://github.com/zxu756/ScholarOS/releases/download/v#{version}/ScholarOS-v#{version}-macos-arm64.zip"
  name "ScholarOS"
  desc "Checks .bib references against Crossref, OpenAlex, doi.org, arXiv and PubMed"
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
