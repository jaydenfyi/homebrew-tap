class Scrollodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrollodex"
  url "https://github.com/jaydenfyi/scrollodex/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
