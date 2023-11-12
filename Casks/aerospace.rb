cask "aerospace" do
  version "0.4.0-Beta"
  sha256 "48d4029222fb9acb12e740c4a90a0abc69e62762cc23c3d45cdfd13d28a1ee5d"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13
  depends_on formula: "aerospace-cli"

  app "AeroSpace-v#{version}/AeroSpace.app"
end
