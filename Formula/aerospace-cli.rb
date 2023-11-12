class AerospaceCli < Formula
  desc "A CLI client for AeroSpace tiling window manager"
  homepage "https://github.com/nikitabobko"
  version "0.4.1-Beta"
  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  sha256 "a52525dccfeafcfd5b8dc1dbc596b50b0898f118e72360e7a1a591f5494bc222"
  license "MIT"

  def install
    bin.install "aerospace"
  end
end
