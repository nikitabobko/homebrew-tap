cask "aerospace" do
  version "0.1.0-Alpha"
  sha256 "b6ba11b74d0909ba73a113dab29da67de8d2055ccbb77f8a0c1ba585b6b89d64"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13

  app "AeroSpace.app"
end
