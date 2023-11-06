#!/bin/bash
# shellcheck disable=SC2162
set -e

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

git submodule update --init --recursive

# sudo apt-get update
# # staticx requires patchelf
# sudo DEBIAN_FRONTEND=noninteractive apt-get install python3 python3-dev python3-pip patchelf mosquitto pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra texlive-xetex -y
# pip3 install --upgrade requests
# poetry config virtualenvs.in-project true

sudo DEBIAN_FRONTEND=noninteractive apt-get install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra texlive-xetex -y
