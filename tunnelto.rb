class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.12.zip"
  sha256 "a72d7db1aa9c4688f937e16de23107c161e82162f39dc3f32880a0fc9f73574b"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "./tunnelto"
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.12"
    sha256 "a92156531a8062b3f0bc1dd57a92f1fa3cb674051ba426b70bb2ab73f21f479a" => :catalina
    sha256 "a92156531a8062b3f0bc1dd57a92f1fa3cb674051ba426b70bb2ab73f21f479a" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
