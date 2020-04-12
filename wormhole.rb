class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/v0.1.2.zip"
  sha256 "a7247b0266c60fd59aef8bee5d6db829d374ac1f005159c304d28fcdb3666d9b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/v0.1.2/"
    cellar :any_skip_relocation
    sha256 "60e93a7f61e56cb8dd3ea1767eb80305a523e430598e7c7da079db2143fe37c9" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
