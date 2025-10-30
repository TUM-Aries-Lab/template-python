"""Sample doc string."""

import argparse

from loguru import logger

from change_me.definitions import DEFAULT_LOG_LEVEL, LogLevel
from change_me.utils import setup_logger


def main(log_level: str) -> None:
    """Run the pipeline."""
    setup_logger(filename="log_file", log_dir=None, log_level=log_level)
    logger.info("Hello world!")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--log-level",
        default=DEFAULT_LOG_LEVEL,
        choices=list(LogLevel),
        help="Log level.",
    )
    args = parser.parse_args()

    main(log_level=args.log_level)
