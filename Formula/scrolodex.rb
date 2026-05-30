class Scrolodex < Formula
  desc "macOS menu-bar app for switching windows by scrolling"
  homepage "https://github.com/jaydenfyi/scrolodex"
  url "https://github.com/jaydenfyi/scrolodex/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "ebe3671f54a178260e2c38ee2db3f9c4664c45775ec7b0d0f598d59b935dc407"
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
