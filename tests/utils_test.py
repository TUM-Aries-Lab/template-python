"""Test the utils module."""

from pathlib import Path
from tempfile import TemporaryDirectory

from change_me.utils import setup_logger


def test_logger_init():
    """Test logger initialization."""
    with TemporaryDirectory() as log_dir:
        log_dir_path = Path(log_dir)
        log_filepath = setup_logger(filename="log_file", log_dir=log_dir_path)
        assert Path(log_filepath).exists()
    assert not Path(log_filepath).exists()
