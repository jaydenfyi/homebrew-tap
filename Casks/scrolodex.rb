cask "scrolodex" do
  version "0.0.7"
  sha256 "3e66594eca0daac63d0bc19dc35cff3303a970ca03978d7d27781c1362aa3a26"

  url "https://github.com/jaydenfyi/scrolodex/releases/download/v#{version}/Scrolodex-#{version}.zip"
  name "Scrolodex"
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"

  depends_on macos: ">= :ventura"

  app "Scrolodex.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Scrolodex.app"]
  end

  zap trash: [
    "~/Library/Preferences/dev.scrolodex.Scrolodex.plist",
  ]
end
