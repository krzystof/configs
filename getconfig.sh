#!/bin/bash
set -eux

function getfile () {
  wget https://raw.githubusercontent.com/krzystof/configs/master/"$1"
}

case "$1" in
  "babel" )
    getfile ".babelrc"
    ;;

  "editorconfig" )
    getfile ".editorconfig"
    ;;

  "eslint" )
    getfile ".eslintrc.js"
    ;;

  "jest" )
    getfile "jest.config.js"
    ;;

  "jsconfig" )
    getfile "jsconfig.json"
    ;;

  "prettier" )
    getfile ".prettierrc"
    ;;

  "projections" )
    getfile ".projections.json"
    ;;

  "phpcs" )
    getfile "phpcs.xml"
    ;;

  "phpcsfixer" )
    getfile ".php_cs"
    ;;

  "phpmd" )
    getfile "phpmd.xml"
    ;;

  "phpunit" )
    getfile "phpunit.xml"
    ;;

  "tsconfig" )
    getfile "tsconfig.json"
    ;;

  "tslint" )
    getfile "tslint.json"
    ;;

  "" )
    echo
    echo "Usage:  getconfig <TOOL>"
    echo
    echo "A futuristic way to set up tools configuration"
    echo
    echo "Configuration Available:"
    echo "  babel         .babelrc"
    echo "  editorconfig  .editorconfig"
    echo "  eslint        .eslintrc.js"
    echo "  jest          .jest.config.js"
    echo "  jsconfig      jsconfig.json"
    echo "  prettier      .prettierrc"
    echo "  phpunit       phpunit.xml"
    echo "  phpmd         phpmd.xml"
    echo "  phpcs         phpcs.xml"
    echo "  phpcsfixer    .php_cs"
    echo "  tsconfig      tsconfig.json"
    echo "  tslint        tslint.json"
    echo
    ;&
esac
