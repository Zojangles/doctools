#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

function build_docs {
  echo "##################################################"
  echo " Build Docs"
  echo "##################################################"
  pandoc docs/Example_Guide.md --pdf-engine=xelatex -o docs/Example_Guide.pdf 2> /dev/null
}

function run_help {
  echo "usage: build [-h | --help]"
  echo
  echo "Build some docs"
  echo
  echo "optional arguments:"
  echo "  -h, --help           Show this help message and exit."
  echo "  -d, --docs           Build only the docs."
}

OPTS=$(getopt -n build -o d::,h:: --long docs::,help:: -- "$@")
if [[ $? -ne 0 ]]; then
    exit 1;
fi
eval set -- "$OPTS"
while true ; do
  case "$1" in
    -d | --docs)
      build_docs
      exit 0
      ;;
    -h | --help )
      run_help
      exit 0
      ;;
    -- )
      build_docs
      exit 0
      ;;
    *)
      echo "Unknown Argument"
      run_help
      exit 22
      ;;
  esac
done