#!/usr/bin/env bash
set -e # Exit if one of commands exit with non-zero exit code
set -u # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error
set -o pipefail # Any command failed in the pipe fails the whole pipe
# set -x # Print shell commands as they are executed (or you can try -v which is less verbose)
cd "$(dirname "$0")"
export PATH="/bin:/usr/bin"

version=$(grep '^\s*version' Casks/aerospace.rb | head -1 | grep --only-matching -E '[0-9.]+')
cp Casks/aerospace.rb "Casks/aerospace@$version.rb"
sed -i '' "/^cask/ s/aerospace/aerospace@$version/" "Casks/aerospace@$version.rb"
