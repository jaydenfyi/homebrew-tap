class Scrolodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"
  url "https://github.com/jaydenfyi/scrolodex/archive/refs/tags/v0.0.10.tar.gz"
  sha256 "41a63dad22f982fb20fb39f56925d587173404140ed6758adf89f4543d081aa9"
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
