class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.14.zip"
  sha256 "c67618f6766c71f50e2e6025bc48e5cd2d4eff86"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "./tunnelto"
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.14.zip"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb0" => :catalina
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb0" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
