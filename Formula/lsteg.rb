class Lsteg < Formula
  desc "Multilingual linguistic steganography CLI"
  homepage "https://github.com/madebydaniz/linguasteg"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madebydaniz/linguasteg/releases/download/v0.2.0/lsteg-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a6623850a0de607b444c1b7e000a565d85f9cc6837aad550b34c308aa6c5a895"
    else
      url "https://github.com/madebydaniz/linguasteg/releases/download/v0.2.0/lsteg-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "086305cdcff0fa8ec6562f3adf1afaae2d78b66faba4f053f5f51344ec4e4dc8"
    end
  end

  on_linux do
    url "https://github.com/madebydaniz/linguasteg/releases/download/v0.2.0/lsteg-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f30e6cf5dd055e6951229cbbcc30a49c03bec7cb3f583d4c2f18d44bfe385833"
  end

  def install
    bin.install "lsteg"
  end

  test do
    assert_match "LinguaSteg CLI", shell_output("#{bin}/lsteg --help")
  end
end
