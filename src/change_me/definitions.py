"""Common definitions for this module."""

from dataclasses import dataclass
from pathlib import Path

import numpy as np

np.set_printoptions(precision=3, floatmode="fixed", suppress=True)


# --- Directories ---
ROOT_DIR: Path = Path("src").parent
DATA_DIR: Path = ROOT_DIR / "data"
RECORDINGS_DIR: Path = DATA_DIR / "recordings"
LOG_DIR: Path = DATA_DIR / "logs"

# Default encoding
ENCODING: str = "utf-8"

DATE_FORMAT = "%Y-%m-%d_%H-%M-%S"

DUMMY_VARIABLE = "dummy_variable"


@dataclass
class LogLevel:
    """Log levels for loguru."""

    debug: str = "DEBUG"
    info: str = "INFO"
    warning: str = "WARNING"
    error: str = "ERROR"
    critical: str = "CRITICAL"


DEFAULT_LOG_LEVEL = LogLevel.info
