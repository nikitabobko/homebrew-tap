class BrewInstallPath < Formula
  desc "Simple script that allows installing homebrew formulas/casks from paths"
  homepage "https://github.com/nikitabobko/brew-install-path"
  version "1.2.1"
  url "https://raw.githubusercontent.com/nikitabobko/brew-install-path/refs/tags/v#{version}/brew-install-path"
  sha256 "464719798be6533ffd4fe8894514f95852d49fc5bea84413f0df48d256aa076b"
  license "MIT"
  head 'https://github.com/nikitabobko/brew-install-path.git', branch: "main"

  def install
    bin.install "brew-install-path"
    bin.install_symlink "brew-install-path" => "brew-ip"
  end
end
