class Wormhole < Formula
  desc "expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.6.zip"
  sha256 "f3607a10f32545d3c43f96375677af93219a3acd1c3e8098fb58cdd5132a9185"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "."
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.6"
    sha256 "2f6a9894c5b942957b538fbd6d86914630deecc82b3c71ee85ad5bd0fef04811" => :catalina
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
