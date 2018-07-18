#!/bin/bash
set -e

function getfile () {
  wget https://raw.githubusercontent.com/krzystof/configs/master/$1
}

case "$1" in
  "eslint" )
    getfile ".eslintrc.js"
    ;&

  "babel" )
    getfile ".babelrc"
    ;&

  "" )
    echo
    echo "Usage:  getconfig TOOL"
    echo
    echo "A futuristic way to set up tools configuration"
    echo
    echo "Configuration Available:"
    echo "  eslint        .eslintrc.js"
    echo "  babel         .babelrc"
    echo
    ;&
esac
