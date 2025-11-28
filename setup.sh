#!/usr/bin/env bash
set -euo pipefail

# 1. Run cookiecutter in the current directory
cookiecutter .

# Extract repo_name from cookiecutter.json
REPO_NAME=$(jq -r '.repo_name' cookiecutter.json)

if [[ -z "$REPO_NAME" ]]; then
  echo "Error: Could not read repo_name from cookiecutter.json"
  exit 1
fi

echo "Generated repo name: $REPO_NAME"

# 2. Delete the cookiecutter template folder ONLY if it exists
if [[ -d "{{ cookiecutter.repo_name }}" ]]; then
  echo "Deleting template folder '{{ cookiecutter.repo_name }}'"
  rm -rf "{{ cookiecutter.repo_name }}"
fi

# 3. Move all actual files (including dotfiles) from inner folder outwards
echo "Moving files from inner folder: $REPO_NAME"

shopt -s dotglob      # enable matching of hidden files
shopt -s nullglob     # treat no-match as null list, not literal
for f in "$REPO_NAME"/*; do
    # Exclude '.' and '..'
    [[ "$f" == "$REPO_NAME/." ]]  && continue
    [[ "$f" == "$REPO_NAME/.." ]] && continue
    mv "$f" .
done
shopt -u dotglob nullglob

# 4. Delete the now-empty inner folder
echo "Deleting inner folder: $REPO_NAME"
rmdir "$REPO_NAME"

# 5. Delete cookiecutter.json
echo "Deleting cookiecutter.json"
rm -f cookiecutter.json

echo "✔ Bootstrapping complete!"