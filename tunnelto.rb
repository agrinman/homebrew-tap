class Tunnelto < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.7.zip"
  sha256 "776b7137c25f508b65618ad72d55faace4e814037f8fb19c8cd81f1fae0ae5f4"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.7"
    sha256 "b77f2f79951ee1b02111db6de0c99b11455a1bf7c7e2562384068248eda5a120" => :catalina
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
