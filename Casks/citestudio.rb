cask "citestudio" do
  version "0.3.0"
  sha256 "2358657a105381f79f59f34465d3d9ea8adc08b48bf1344c7ccc0e808d8ad42d"

  url "https://github.com/zxu756/CiteStudio/releases/download/v#{version}/CiteStudio-v#{version}-macos-arm64.zip"
  name "CiteStudio"
  desc "Check BibTeX references against Crossref and OpenAlex (macOS app, CLI, MCP)"
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
