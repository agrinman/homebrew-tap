class Tunnelto < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.8.zip"
  sha256 "5fc65270fcdf86c0a00385f01d323259d588737345602b566c7bfc178c0c7605"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.8"
    sha256 "c6af4f922fb774b7ba7a963512fdfa79d36cc9ffc963a14095d3f13ad3429d4b" => :catalina
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
