cask "aerospace" do
  version "0.6.0-Beta"
  sha256 "b2ad2db506fbaa11ff7211b5d3f5411f43bcaf698337900456bc070da0032b61"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is an i3-like tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13
  # Note: conflicts_with formula: is a stub and is not yet functional. :(
  conflicts_with formula: "aerospace-cli"

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/aerospace"
end
