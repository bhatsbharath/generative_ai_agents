#!/bin/bash

VENV_DIR="venv_agent"

if [ -f "$VENV_DIR/bin/activate" ]; then
    # Activate the virtual environment
    source "$VENV_DIR/bin/activate"
else
    echo "Activation script not found. Make sure the virtual environment exists."
    exit 1
fi
