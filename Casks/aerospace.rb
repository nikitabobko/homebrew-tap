cask "aerospace" do
  version "0.4.1-Beta"
  sha256 "a52525dccfeafcfd5b8dc1dbc596b50b0898f118e72360e7a1a591f5494bc222"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13
  depends_on formula: "aerospace-cli"

  app "AeroSpace-v#{version}/AeroSpace.app"
end
