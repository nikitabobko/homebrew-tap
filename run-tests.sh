#!/usr/bin/env bash
set -e # Exit if one of commands exit with non-zero exit code
set -u # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error
set -o pipefail # Any command failed in the pipe fails the whole pipe
# set -x # Print shell commands as they are executed (or you can try -v which is less verbose)
# cd "$(dirname "$0")"
cd "$(dirname "$0")"

cd ./Casks

for file in *; do
    echo '#############################################################################################################'
    echo "$file"
    brew install --cask "./$file"
    version=$(grep '^\s*version' "$file" | head -1 | grep --only-matching -E '[0-9.]+')
    if aerospace -v | grep -q --fixed-strings "$version"; then
        true
    else
        echo "Expected version: $version"
        echo "Actual:"
        aerospace -v
        exit 1
    fi
    brew uninstall "./$file"
done
