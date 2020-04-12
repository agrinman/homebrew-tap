class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/0.1.2.zip"
  sha256 "28c89eae7ecb2bc039a413d702a97bd348f5d4991e1a4369ff00a24063387994"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/0.1.2"
    sha256 "dea10e60a5b51f50db227619f45be2a0ba935015c76f4c527a81c4b33186a914" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
