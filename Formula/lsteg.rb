class Lsteg < Formula
  desc "Multilingual linguistic steganography CLI"
  homepage "https://github.com/madebydaniz/linguasteg"
  version "0.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madebydaniz/linguasteg/releases/download/v0.0.0/lsteg-v0.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/madebydaniz/linguasteg/releases/download/v0.0.0/lsteg-v0.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/madebydaniz/linguasteg/releases/download/v0.0.0/lsteg-v0.0.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "lsteg"
  end

  test do
    assert_match "LinguaSteg CLI", shell_output("#{bin}/lsteg --help")
  end
end
