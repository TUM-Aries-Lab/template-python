# Template-Python

Do ***NOT*** clone this repository. Please use it as a template instead—this README is meant to help you get started quickly.

The file cookiecutter.json has the following contents:
```
{
  "repo_name": "temp-python",
  "module_name": "new-repo",
  "package_name": "new_repo",
  "org_name": "TUM-Aries-Lab",
  "description": "Basic description for the repo.",
  "author_name": "Tony Smoragiewicz",
  "author_email": "tony.smoragiewicz@tum.de",
  "python_version": "3.12",
  "version": "0.0.1"
}
```

## Steps
1. Generate the new repo: `cookiecutter .`
2. Delete the cookiecutter folder: `rm -rf \{\{\ cookiecutter.repo_name\ \}\}`
3. Move all code out of the inner folder: `mv <repo_name>/* .`
4. Delete the inner folder: `rm -r <repo_name>`
5. Delete the cookiecutter.json: `rm cookiecutter.json`.
