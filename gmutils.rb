class Gmutils < Formula
  desc "Genmeta Binary Utilities"
  version "0.2.3"

  on_arm do
    url "https://download.genmeta.net/homebrew/gmutils_0.2.3_arm64.tar.gz"
    sha256 "0a5a26a8744df85079427c2e824bf7924994ac445b8d4215a5af86eeaa14b8db"
  end
  
  on_intel do
    url "https://download.genmeta.net/homebrew/gmutils_0.2.3_amd64.tar.gz"
    sha256 "e940f9bee6e32f9eaf7f0be31b7988d59477bc9a316f9fe78426db65379a185b"
  end

  def install
    bin.install "genmeta"
    bin.install "genmeta-ssh3.sh" if File.exist? "genmeta-ssh3.sh"
  end

  test do
    system "#{bin}/genmeta", "--version"
  end
end
