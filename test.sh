#!/usr/bin/env bash
set -e # Exit if one of commands exit with non-zero exit code
set -u # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error
set -o pipefail # Any command failed in the pipe fails the whole pipe
# set -x # Print shell commands as they are executed (or you can try -v which is less verbose)

cd "$(dirname "$0")"

if [ ! -z "$(git status --porcelain)" ]; then
    echo dirty dir
    git status
    exit 1
fi
dirty=$(pwd)
pushd /opt/homebrew/Library/Taps/nikitabobko/homebrew-tap
    git fetch $dirty main
    git checkout FETCH_HEAD
popd

brew reinstall aerospace
