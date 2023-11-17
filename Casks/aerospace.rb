cask "aerospace" do
  version "0.4.2-Beta"
  sha256 "b8c6dc6c45ba2bcb052db176cac99dc7ce0252fcb6e94f0ea5548124b8e8cc2a"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13
  # Note: conflicts_with formula: is a stub and is not yet functional. :(
  conflicts_with formula: "aerospace-cli"

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/aerospace"
end
