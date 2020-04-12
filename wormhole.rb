class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/v0.1.2.zip"
  sha256 "f18be20190906206fc9bdf45bf162301a934608965ec267b701bd6cfa81fd01b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/v0.1.2/wormhole-macOS.tar.gz"
    cellar :any_skip_relocation
    sha256 "c703678597a80740295b5c5e0aa8938979f397a2e7015bca59b066c5372b3f13" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
