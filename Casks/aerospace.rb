cask "aerospace" do
  version "0.2.0-Beta"
  sha256 "b3f1294b6b675a998f9b40921d5fa2df46f3483e97d5b9736961acbd3647f2fc"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is a tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  auto_updates true
  depends_on macos: ">= :ventura" # macOS 13

  app "AeroSpace.app"
end
