class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.16.zip"
  sha256 "66cbd4dadea55be31d865074f94de996f78352628119e20fb343fe6a9694ba2e"

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.16"
    sha256 catalina:  "f6e06ec835c02ff1f08cc12c77b067bce8eddd96b9015cefef250353c89e1fbd"
    sha256 big_sur: "f6e06ec835c02ff1f08cc12c77b067bce8eddd96b9015cefef250353c89e1fbd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", prefix.to_s, "--path", "./tunnelto"
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
