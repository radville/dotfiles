#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

install_copilot_instructions() {
  local dotfiles_dir
  local instructions_source
  local copilot_dir

  dotfiles_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  instructions_source="$dotfiles_dir/.instructions/copilot-quality-local.md"
  copilot_dir="$HOME/.copilot"

  if [ -f "$instructions_source" ]; then
    mkdir -p "$copilot_dir/instructions"

    cp "$instructions_source" "$copilot_dir/copilot-instructions.md"

    {
      printf '%s\n' \
        '---' \
        'name: Personal Copilot quality rules' \
        'description: Personal Git, review, writing, and engineering preferences' \
        'applyTo: "**"' \
        '---' \
        ''
      cat "$instructions_source"
    } > "$copilot_dir/instructions/personal-quality.instructions.md"
  fi
}

if [ "${1:-}" = "--copilot-only" ]; then
  install_copilot_instructions
  exit 0
fi

rm -f $HOME/.zshrc
ln -s $(pwd)/zshrc $HOME/.zshrc
ln -s $(pwd)/gitmessage $HOME/.gitmessage
mkdir -p $HOME/.config/gh
ln -s $(pwd)/gh_config.yml $HOME/.config/gh/.config.yml
ln -s $(pwd)/bash_profile $HOME/.bash_profile

install_copilot_instructions
