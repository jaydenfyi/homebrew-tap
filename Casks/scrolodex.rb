cask "scrolodex" do
  version "0.0.6"
  sha256 "6cc2f669a1002aa7e851d9de8faec2c1ebc33b186165f41c032a68d041a90464"

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
