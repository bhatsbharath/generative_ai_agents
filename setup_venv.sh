#!/bin/bash

VENV_DIR="venv_agent"

if [ -f "$VENV_DIR/bin/activate" ]; then
    echo "Virtual environment already exists in \"$VENV_DIR\""
else
    echo "Creating virtual environment in \"$VENV_DIR\"..."
    python3 -m venv "$VENV_DIR"
    
    if [ $? -ne 0 ]; then
        echo "Failed to create virtual environment. Make sure Python 3 is installed and in PATH."
        exit 1
    fi

    echo "Virtual environment created."
fi
