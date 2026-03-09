class Lsteg < Formula
  desc "Multilingual linguistic steganography CLI"
  homepage "https://github.com/madebydaniz/linguasteg"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c9f88e23757db7660a1f69e4cda21df49d03f776d0581176e1d99463070c48a7"
    else
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "746a861049951842bae405901fbc6aea5b1ef7afcad302a086657ca43b712aaf"
    end
  end

  on_linux do
    url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4f75bc00b0b6aa4b377615f6c8d0f190821db6d18b68807ce5c20fea9f00e805"
  end

  def install
    bin.install "lsteg"
  end

  test do
    assert_match "LinguaSteg CLI", shell_output("#{bin}/lsteg --help")
  end
end
