cask "scrolodex" do
  version "0.0.5"
  sha256 "4cf2e617acc423ee11cdb536ecf078cad79df753a7029a8556e69484375c04ea"

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
