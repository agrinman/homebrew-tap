class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.18.zip"
  sha256 "4730383204d6120da784d88d517a8464ea39f2ea66e75e00a2ce6147f964a038"

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.18"
    sha256 catalina:  "99736bcb172f9cbed127f25a80a6b91fe355c4673461878962d7b5ac94782db1"
    sha256 big_sur: "99736bcb172f9cbed127f25a80a6b91fe355c4673461878962d7b5ac94782db1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
