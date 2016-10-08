#!/bin/bash
set -e

if [ "$TRAVIS" != "true" ]; then
    if [ "$TRAVIS_PULL_REQUEST" != "false" ] && [ "$TRAVIS_BRANCH" != "master" ]; then
        echo "Building for commit \"${TRAVIS_COMMIT:0:7}\" for repo \"$TRAVIS_REPO_SLUG\""
        ./build.sh
        printf "Pushing to chandocs.github.io..."
        exit 0
    else
        echo "Skipping process; we're either in a PR or on a different branch"
        exit 0
    fi
else
    echo \"Toto, I\'ve a feeling we\'re not in Kansas anymore.\"
fi