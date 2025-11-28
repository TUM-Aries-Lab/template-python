#!/usr/bin/env bash
set -euo pipefail

# 1. Run cookiecutter in the current directory
cookiecutter .

# Resolve the generated repo name from cookiecutter.json
REPO_NAME=$(jq -r '.repo_name' cookiecutter.json)

if [[ -z "$REPO_NAME" ]]; then
  echo "Error: Could not read repo_name from cookiecutter.json"
  exit 1
fi

echo "Generated repo name: $REPO_NAME"

# 2. Delete the cookiecutter template folder
echo "Deleting template folder '{{ cookiecutter.repo_name }}'..."
rm -rf "{{ cookiecutter.repo_name }}"

# 3. Move newly generated project files out of the inner folder
echo "Moving files from inner folder: $REPO_NAME"
mv "$REPO_NAME"/* .
mv "$REPO_NAME"/.* .

# 4. Delete the inner folder
echo "Deleting inner folder: $REPO_NAME"
rmdir "$REPO_NAME"

# 5. Delete template metadata
echo "Deleting cookiecutter.json"
rm cookiecutter.json

echo "✔ Bootstrapping complete!"