cask "aerospace" do
  version "0.3.0-Beta"
  sha256 "4b9dc2159a86058141a3bb68806a1b8ee45ae6b59df09cba71bd3ceb0a3ddd4b"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13

  app "AeroSpace.app"
end
