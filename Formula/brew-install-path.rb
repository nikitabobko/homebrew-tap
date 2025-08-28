class BrewInstallPath < Formula
  desc "Simple script that allows installing homebrew formulas/casks from paths"
  homepage "https://github.com/nikitabobko/brew-install-path"
  url 'https://raw.githubusercontent.com/nikitabobko/brew-install-path/refs/tags/v1.1.0/brew-install-path'
  version "1.1.0"
  sha256 "325279456e442d98da4fa6a44fc316fb14786cb2623e6c4295d38b0a30ccbdfe"
  license "MIT"
  head 'https://github.com/nikitabobko/brew-install-path.git', branch: "main"

  def install
    bin.install "brew-install-path"
    bin.install_symlink "brew-install-path" => "brew-ip"
  end
end
