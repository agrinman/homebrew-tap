# typed: false
# frozen_string_literal: true

class Wormhole < Formula
  desc "Expose your local web server to the internet with a public url"
  homepage "https://github.com/agrinman/wormhole"
  url "https://github.com/agrinman/wormhole/archive/0.1.5.zip"
  sha256 "11e36f7199e7a4b490814ae03a752c603e0870c7d9faa4707fc02039b111ba69"

  bottle do
    root_url "https://github.com/agrinman/wormhole/releases/download/0.1.5"
    sha256 catalina: "944ebc5e1a464f562b0ddca2b34da3738c04086952426db22456916b58d3e297"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--bin", "wormhole", "--locked", "--root", prefix.to_s, "--path", "."
  end

  test do
    system "#{bin}/wormhole", "--help"
  end
end
