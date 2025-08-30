class BrewInstallPath < Formula
  desc "Simple script that allows installing homebrew formulas/casks from paths"
  homepage "https://github.com/nikitabobko/brew-install-path"
  version "1.2.0"
  url "https://raw.githubusercontent.com/nikitabobko/brew-install-path/refs/tags/v#{version}/brew-install-path"
  sha256 "601a56019c66b0d15d582352405ac23392770f9e1d0f4b2e920b10075a4dbfde"
  license "MIT"
  head 'https://github.com/nikitabobko/brew-install-path.git', branch: "main"

  def install
    bin.install "brew-install-path"
    bin.install_symlink "brew-install-path" => "brew-ip"
  end
end
