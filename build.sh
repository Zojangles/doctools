#!/bin/bash

function build_docs {
  echo "##################################################"
  echo " Build Docs"
  echo "##################################################"
  pandoc "${input_file}" --pdf-engine=xelatex -o "${output_file}" -V geometry:margin=1in
  echo "Outputting to: ${output_file}"
}

function run_help {
  echo "usage: build [-h | --help] [-i | --input <input_file>] [-o | --output <output_file>]"
  echo
  echo "Build some docs"
  echo
  echo "optional arguments:"
  echo "  -h, --help           Show this help message and exit."
  echo "  -i, --input          Specify the input Markdown file (default: docs/Example_Guide.md)."
  echo "  -o, --output         Specify the output PDF file (default: Example_Guide.pdf in the 'docs' folder)."
}

input_file=""
output_file=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    -i | --input )
      input_file="$2"
      output_file="${input_file%.md}.pdf"      
      shift 2
      ;;
    -o | --output )
      output_file="$2"
      shift 2
      ;;
    -h | --help )
      run_help
      exit 0
      ;;
    -- )
      shift
      break
      ;;
    *)
      echo "Unknown Argument"
      run_help
      exit 22
      ;;
  esac
done

build_docs
