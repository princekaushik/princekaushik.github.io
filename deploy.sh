#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# initialize a new git repository
git init

# add all files to the repository
git add -A

# commit changes
git commit -m 'deploy'

# push changes to the gh-pages branch of your repository
git push -f git@github.com:princekaushik/princekaushik.github.io.git master:gh-pages

# navigate back to the project root directory
cd -
