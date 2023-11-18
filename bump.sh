#!/usr/bin/env bash
set -e # Exit if one of commands exit with non-zero exit code
set -u # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error
set -o pipefail # Any command failed in the pipe fails the whole pipe
# set -x # Print shell commands as they are executed (or you can try -v which is less verbose)

cd "$(dirname "$0")"
git fetch --tags git@github.com:nikitabobko/AeroSpace.git
version=$(git tag | sort --version-sort | tail -1 | gsed 's/^.//')

mkdir -p .artifacts
pushd .artifacts
    wget -O AeroSpace-v$version.zip https://github.com/nikitabobko/AeroSpace/releases/download/v$version/AeroSpace-v$version.zip
popd

sha=$(sha256sum .artifacts/AeroSpace-v$version.zip | awk '{print $1}')

gsed -i "s/ sha256.*/ sha256 \"$sha\"/" ./Casks/aerospace.rb
gsed -i "s/ version.*/ version \"$version\"/" ./Casks/aerospace.rb

git add --all
git commit -m "v$version"
./test.sh
