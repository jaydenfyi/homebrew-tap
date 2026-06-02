cask "scrolodex" do
  version "0.0.11"
  sha256 "4a256031d1822760bbdd0442d78c7ca12761db5e032a5cd2e2afbd1bb5da2656"

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
