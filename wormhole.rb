class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/0.1.4.zip"
  sha256 "2d4da2b89df7e75e2a14c07b7611a5692d2632ba1723e39adeb4275721916412"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/0.1.4"
    sha256 "349bb9a1995ae3dd1314d92c7f66839b8227c97e16ddd406cf3f7a488a909cbe" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
