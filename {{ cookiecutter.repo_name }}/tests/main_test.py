"""Test the main program."""

from {{ cookiecutter.module_name }}.__main__ import main


def test_main():
    """Test the main function."""
    assert main() is None
