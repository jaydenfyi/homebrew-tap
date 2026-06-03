cask "scrolodex" do
  version "0.0.12"
  sha256 "f2c5d96603cf8357c9f5babfaeb30597f931624a05226bcb639e0a8f3c3a7076"

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
