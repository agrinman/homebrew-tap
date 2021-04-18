class Tunnelto < Formula
  desc "Expose your local web server to the internet with a public url: https://tunnelto.dev"
  homepage "https://github.com/agrinman/tunnelto"
  url "https://github.com/agrinman/tunnelto/archive/0.1.13.zip"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "tunnelto", "--locked", "--root", "#{prefix}", "--path", "./tunnelto"
  end

  bottle do
    root_url "https://github.com/agrinman/tunnelto/releases/download/0.1.13"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" => :catalina
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5" => :big_sur    
  end

  test do
    system "#{bin}/tunnelto", "--help"
  end
end
