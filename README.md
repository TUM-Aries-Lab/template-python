# Template-Python

Do ***NOT*** clone this repository. Please use it as a template instead—this README is meant to help you get started quickly.

The file cookiecutter.json has the following contents:
```
{å
  "repo_name": "new-repo",
  "module_name": "new_repo",
  "package_name": "{{ cookiecutter.repo_name }}",
  "org_name": "TUM-Aries-Lab",
  "description": "Basic description of the repo.",
  "author_name": "First Last",
  "author_email": "first.last@tum.de",
  "python_version": "3.12",
  "version": "0.0.1alpha"
}
```

## Steps
1. Generate the new repo: `cookiecutter .`
2. Delete the cookiecutter folder: `rm -rf \{\{\ cookiecutter.repo_name\ \}\}`
3. Move all code out of the inner folder: `mv <repo_name>/* .`
4. Delete the inner folder: `rm -r <repo_name>`
5. Delete the cookiecutter.json: `rm cookiecutter.json`.
