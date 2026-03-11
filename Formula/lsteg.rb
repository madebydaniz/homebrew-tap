class Lsteg < Formula
  desc "Multilingual linguistic steganography CLI"
  homepage "https://github.com/madebydaniz/linguasteg"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.2/lsteg-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "5dba24f2b8c81fe7591edbe3b8ff358d480d1f323cac879c676d31740a529738"
    else
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.2/lsteg-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "cf348a4861a01e37b795a4c11002f9ce8d5deec9ad0350d42e772ce20cdd28fa"
    end
  end

  on_linux do
    url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.2/lsteg-v0.2.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1bdd3249aa4531c9327bb8b7c98df2c09b1db31aee08ca6e93b31633bec777e2"
  end

  def install
    bin.install "lsteg"
  end

  test do
    assert_match "LinguaSteg CLI", shell_output("#{bin}/lsteg --help")
  end
end
