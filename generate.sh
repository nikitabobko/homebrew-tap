#!/usr/bin/env bash
set -e # Exit if one of commands exit with non-zero exit code
set -u # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error
set -o pipefail # Any command failed in the pipe fails the whole pipe
# set -x # Print shell commands as they are executed (or you can try -v which is less verbose)

cd "$(dirname "$0")"
git fetch --tags git@github.com:nikitabobko/AeroSpace.git
version=$(git tag | sort --version-sort | tail -1 | gsed 's/^v//')
# version="9.9.9-Beta"

mkdir -p .artifacts
cd .artifacts
    wget -O AeroSpace-v$version.zip https://github.com/nikitabobko/AeroSpace/releases/download/v$version/AeroSpace-v$version.zip
    # cp /Users/bobko/a/AeroSpace/.release/AeroSpace-v$version.zip AeroSpace-v$version.zip
    unzip AeroSpace-v$version.zip
cd -

zipFile=".artifacts/AeroSpace-v$version.zip"

sha=$(sha256sum $zipFile | awk '{print $1}')

manpages=$(ls .artifacts/AeroSpace-v$version/manpage | \
    while read it; do echo "  manpage \"AeroSpace-v#{version}/manpage/$it\""; done
)

cat > Casks/aerospace.rb <<EOF
cask "aerospace" do
  version "$version"
  sha256 "$sha"

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
    system "xattr -d com.apple.quarantine /Applications/AeroSpace.app"
  end

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/bin/aerospace"
$manpages
end
EOF

git add --all
git commit -m "v$version"
./install.sh
