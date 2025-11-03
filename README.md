# template-python
[![Coverage Status](https://coveralls.io/repos/github/TUM-Aries-Lab/template-python/badge.svg?branch=main)](https://coveralls.io/github/TUM-Aries-Lab/template-python?branch=main)
![Docker Image CI](https://github.com/TUM-Aries-Lab/template-python/actions/workflows/ci.yml/badge.svg)

Simple README.md for a Python project template.

## Install
To install the library run:

```pip install change-me```

OR

```pip install git+https://github.com/TUM-Aries-Lab/template-python.git@<specific-tag>```

## Development
0. Install [Poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
1. `make init` to create the virtual environment and install dependencies
2. `make format` to format the code and check for errors
3. `make test` to run the test suite
4. `make clean` to delete the temporary files and directories

## Publishing
It's super easy to publish your own packages on PyPI. To build and publish this package run:

```bash
poetry publish --build
```
The package can then be found at: https://pypi.org/project/change-me

## Module Usage
```
"""Basic docstring for my module."""

from loguru import logger

def main() -> None:
    """Run a simple demonstration."""
    logger.info("Hello World!")

if __name__ == "__main__":
    main()
```

## Program Usage
```bash
poetry run python -m change_me
```
