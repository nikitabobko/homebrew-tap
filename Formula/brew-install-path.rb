class BrewInstallPath < Formula
  desc "Simple script that allows installing homebrew formulas/casks from paths"
  homepage "https://github.com/nikitabobko/brew-install-path"
  url "https://github.com/nikitabobko/brew-install-path/archive/refs/tags/v1.0.0.zip"
  version "1.0.0"
  sha256 "a876546ea41691a555dbeec6bb43b9fb812570abcab2c0b5bacee4434d28e34f"
  license "MIT"
  head 'https://github.com/nikitabobko/brew-install-path.git', branch: "main"

  def install
    bin.install "brew-install-path"
    bin.install_symlink "brew-install-path" => "brew-ip"
  end
end
