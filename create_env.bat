@echo off
set VENV_DIR=venv

if exist "%VENV_DIR%\Scripts\activate.bat" (
    echo Virtual environment already exists in "%VENV_DIR%"
) else (
    echo Creating virtual environment in "%VENV_DIR%"...
    python -m venv %VENV_DIR%
    if errorlevel 1 (
        echo Failed to create virtual environment. Make sure Python is installed and in PATH.
        exit /b 1
    )
    echo Virtual environment created.
)
