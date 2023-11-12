class AerospaceCli < Formula
  desc "A CLI client for AeroSpace tiling window manager"
  homepage "https://github.com/nikitabobko"
  version "0.4.0-Beta"
  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  sha256 "48d4029222fb9acb12e740c4a90a0abc69e62762cc23c3d45cdfd13d28a1ee5d"
  license "MIT"

  def install
    bin.install "aerospace"
  end
end
