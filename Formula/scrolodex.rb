class Scrolodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"
  url "https://github.com/jaydenfyi/scrolodex/archive/refs/tags/v0.0.11.tar.gz"
  sha256 "daffe42d48cb02cc6f6e9da38c104dd870b5fef3ebbbec74d175fd63c617bd2a"
  license "MIT"

  depends_on :xcode => ["15.0", :build]

  def install
    system "swift", "build", "-c", "release"
    bin.install ".build/release/Scrolodex"
  end

  test do
    system bin/"Scrolodex", "--version"
  end
end
