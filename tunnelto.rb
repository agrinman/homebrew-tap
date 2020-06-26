class Tunnelto < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.9.zip"
  sha256 "866c3b8431b34df61a0650b777a183a22f25f0a2c7d3da1a6eae20d09aad76d8"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.9"
    sha256 "8bba2bf602365148e777cd82d23a75fac0d4d96db3d2006cb01b0a275dc9372f" => :catalina
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
