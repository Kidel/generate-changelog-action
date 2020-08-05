#!/bin/sh -l

git clone --quiet -b $BRANCH --single-branch https://github.com/$REPO &> /dev/null

changelog=`npx conventional-changelog`

changelog="${changelog//'%'/'%25'}"
changelog="${changelog//$'\n'/'%0A'}"
changelog="${changelog//$'\r'/'%0D'}"

echo "::set-output name=changelog::$changelog"
