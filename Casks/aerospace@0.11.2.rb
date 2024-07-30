cask "aerospace@0.11.2" do
  version "0.11.2-Beta"
  sha256 "9aa9a2f465c05d89e198710e833720904989c66d6761874043bca83a53c4ca15"

  url "https://github.com/nikitabobko/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is an i3-like tiling window manager for macOS"
  homepage "https://github.com/nikitabobko/AeroSpace"

  depends_on macos: ">= :ventura" # macOS 13
  # Note: conflicts_with formula: is a stub and is not yet functional. :(
  # https://github.com/Homebrew/homebrew-cask/issues/12822
  conflicts_with formula: "aerospace-cli"

  postflight do
    system "xattr -d com.apple.quarantine #{staged_path}/AeroSpace-v#{version}/bin/aerospace"
    system "xattr -d com.apple.quarantine #{appdir}/AeroSpace.app"
  end

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/bin/aerospace"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close-all-windows-but-current.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-config.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-debug-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-enable.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-exec-and-forget.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-flatten-workspace-tree.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-join-with.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-layout.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-apps.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-exec-env-vars.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-monitors.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-workspaces.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-minimize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-mode.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-workspace-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-reload-config.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-resize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-split.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-trigger-binding.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace-back-and-forth.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace.1"
end
