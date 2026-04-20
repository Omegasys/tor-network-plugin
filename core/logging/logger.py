# core/logging/logger.py

import logging

def setup_logger(name: str) -> logging.Logger:
    """Sets up a logger with a given name."""
    logger = logging.getLogger(name)
    logger.setLevel(logging.DEBUG)

    # Create file handler
    handler = logging.FileHandler(f'{name}.log')
    handler.setLevel(logging.DEBUG)

    # Create formatter and add to handler
    formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
    handler.setFormatter(formatter)

    # Add handler to logger
    logger.addHandler(handler)

    return logger
