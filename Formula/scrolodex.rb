class Scrolodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"
  url "https://github.com/jaydenfyi/scrolodex/archive/refs/tags/v0.0.14.tar.gz"
  sha256 "6a55b80468c38a5ead0bad8a144c5926fc9a090c5f635665d60b08ae1c9a16a1"
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
