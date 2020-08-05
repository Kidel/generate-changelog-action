#!/bin/sh -l

git clone --quiet -b $BRANCH --single-branch https://github.com/$REPO &> /dev/null

changelog=$(conventional-changelog $* -s)

echo $changelog

echo "::set-output name=changelog::$changelog"
