class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.11.zip"
  sha256 "5441fcb63443da2e16fe06ca66df47b1fafb9f7fd064fc4160a79147f376aec7"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "./tunnelto"
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.11"
    sha256 "43a65fa1f4a3a2703f56f9c4b4d6ee80e130916a5b335155c46e3f31d755d041" => :catalina
    sha256 "43a65fa1f4a3a2703f56f9c4b4d6ee80e130916a5b335155c46e3f31d755d041" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
