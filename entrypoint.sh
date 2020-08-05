#!/bin/sh -l

git clone --quiet -b $BRANCH --single-branch https://github.com/$REPO &> /dev/null

npm i

changelog=`npm run conventional-changelog`

changelog="${changelog//'%'/'%25'}"
changelog="${changelog//$'\n'/'%0A'}"
changelog="${changelog//$'\r'/'%0D'}"

echo "::set-output name=changelog::$changelog"
