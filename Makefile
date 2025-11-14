SHELL := /bin/bash

init:
	python3 -m venv .venv
	poetry install --with dev
	poetry run pre-commit install
	poetry env info
	@echo "Created virtual environment"

test:
	poetry run pytest --cov=src/ --cov-report=term-missing --no-cov-on-fail --cov-report=xml --cov-fail-under=10
	rm .coverage

lint:
	poetry run ruff format
	poetry run ruff check --fix

typecheck:
	poetry run mypy src/ tests/ --ignore-missing-imports

format:
	make lint
	make typecheck

clean:
	rm -rf .venv
	rm -rf .mypy_cache
	rm -rf .pytest_cache
	rm -rf build/
	rm -rf dist/
	rm -rf juninit-pytest.xml
	rm -rf logs/*
	find . -name ".coverage*" -delete
	find . -name __pycache__ -exec rm -r {} +

update:
	poetry cache clear pypi --all
	poetry update

docker:
	docker build --no-cache -f Dockerfile -t change_me-smoke .
	docker run --rm change_me-smoke

app:
	poetry run python -m change_me
