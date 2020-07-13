class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.10.zip"
  sha256 "aa3bc35b26a7c7a96ca4669a6855617d80e631f8a114ebe8fb2cc696bbe27840"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.10"
    sha256 "a0144d08c58772b255cad1d9bbfdb9196f812530f3e887490995cde36ba25e3e" => :catalina
    sha256 "a0144d08c58772b255cad1d9bbfdb9196f812530f3e887490995cde36ba25e3e" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
