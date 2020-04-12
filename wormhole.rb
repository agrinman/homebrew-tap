class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/0.1.2.zip"
  sha256 "6856e20c0e6450429ca0a327d2630dfcffe68eab2a9f2fefe8fef546eb741714"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/0.1.2"
    sha256 "0957f125a9eb32971c58f779dc319894d1c84f67470d6fa886daa3eee0154522" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
