class Lsteg < Formula
  desc "Multilingual linguistic steganography CLI"
  homepage "https://github.com/madebydaniz/linguasteg"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "9c910c72283811e3e8cac51e5862a37eedb3ff6fe694142ec038a291a9eb0ebe"
    else
      url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "f7defb9fe9a53edeb96ad69c889c628ee750be0808477cc205d659afa9d0dad8"
    end
  end

  on_linux do
    url "https://github.com/madebydaniz/linguasteg/releases/download/linguasteg-v0.2.1/lsteg-v0.2.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b24a9174d9b20a046b8a3ab362c13489e4f6a040454372506fed8dba3ff33aa6"
  end

  def install
    bin.install "lsteg"
  end

  test do
    assert_match "LinguaSteg CLI", shell_output("#{bin}/lsteg --help")
  end
end
