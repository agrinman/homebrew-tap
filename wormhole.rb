class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/v0.1.2.zip"
  sha256 "c0775421a5fc525fe69a5a3765db1723c6c61536bfaa3f689164193d250ca5ab"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/v0.1.2/"
    cellar :any_skip_relocation
    sha256 "c253c843042e8d2a6abfbd4767cf6088d9914eee7c67ff200d1dcf838d835e53" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
