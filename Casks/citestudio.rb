cask "citestudio" do
  version "0.4.0"
  sha256 "77799c1b86a2e3844a6138f4fde49e48b57eaf4c88d698e4211180345bbbe5fc"

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
