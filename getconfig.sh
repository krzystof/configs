#!/bin/bash
set -e

function getfile () {
  filename="$1"
  if [ -f filename ]; then
    mv "$filename" "$filename-backup"
  fi
  wget https://raw.githubusercontent.com/krzystof/configs/master/$1 "$filename"
}

case "$1" in
  "babel" )
    getfile ".babelrc"
    ;&

  "editorconfig" )
    getfile ".editorconfig"
    ;&

  "eslint" )
    getfile ".eslintrc.js"
    ;&

  "jest" )
    getfile ".jest.config.js"
    ;&

  "prettier" )
    getfile ".prettierrc"
    ;&

  "projections" )
    getfile ".projections.json"
    ;&

  "phpcs" )
    getfile "phpcs.xml"
    ;&

  "phpcsfixer" )
    getfile ".php_cs"
    ;&

  "phpmd" )
    getfile "phpmd.xml"
    ;&

  "phpunit" )
    getfile "phpunit.xml"
    ;&

  "tsconfig" )
    getfile "tsconfig.json"
    ;&

  "tslint" )
    getfile "tslint.json"
    ;&

  "" )
    echo
    echo "Usage:  getconfig TOOL"
    echo
    echo "A futuristic way to set up tools configuration"
    echo
    echo "Configuration Available:"
    echo "  babel         .babelrc"
    echo "  editorconfig  .babelrc"
    echo "  eslint        .eslintrc.js"
    echo "  jest          .jest.config.js"
    echo "  prettier      .babelrc"
    echo "  phpunit       .babelrc"
    echo "  phpmd         .babelrc"
    echo "  phpcs         .babelrc"
    echo "  phpcsfixer    .php_cs"
    echo "  tsconfig      tsconfig.json"
    echo "  tslint        tslint.json"
    echo
    ;&
esac
