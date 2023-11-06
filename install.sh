#!/bin/bash
# shellcheck disable=SC2162
INSTALL_DIR="${HOME}/.bin"
BASHRC="${HOME}/.bashrc"

set -e

cd "$(dirname "${BASH_SOURCE[0]}")" || exit 1

sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get install pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra texlive-xetex -y

# Check if the PATH modification line is already present in .bashrc
if ! grep -q "export PATH=\"\$PATH:${INSTALL_DIR}\"" "$BASHRC"; then
  # Append the PATH modification line to .bashrc
  echo 'export PATH="$PATH:'"${INSTALL_DIR}"'"' >> "$BASHRC"
fi

mkdir -p "${INSTALL_DIR}"

cp build.sh "${INSTALL_DIR}/doctools"
chmod +x "${INSTALL_DIR}/doctools"

echo "Run 'export ~/.bashrc' or restart your terminal to use 'doctools'."
