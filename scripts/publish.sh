#!/bin/bash

source ../bash-scripts/_colors.sh

HEAD=$(git symbolic-ref --short HEAD)
SHA=$(git rev-parse HEAD)
SITE=docs/_site

if [ $# -eq 0 ]; then
  printf "${red}USAGE: $0 <files>${reset}\n" >&2
  exit 1
fi

if ! git diff --quiet; then
  echo >&2
  printf "${red}ERROR: working tree is dirty; aborting...${reset}\n" >&2
  echo >&2
  exit 2
fi

if ! git diff --quiet --cached; then
  echo >&2
  printf "${red}ERROR: index is dirty; aborting...${reset}" >&2
  echo >&2
  exit 2
fi

gh-pages() {
  git checkout gh-pages
  rm * -rf
  mv $SITE/* .
  git add -A
  git commit -m "$HEAD $SHA"
  mv * $SITE
  git checkout $HEAD
}

$*