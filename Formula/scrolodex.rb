class Scrolodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"
  url "https://github.com/jaydenfyi/scrolodex/archive/refs/tags/v0.0.13.tar.gz"
  sha256 "87d136645cd7ee4820479a854b5a956d590e8b72d86ddc46eecaaed626d8deac"
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
