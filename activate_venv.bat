@echo off
set VENV_DIR=venv

if exist "%VENV_DIR%\Scripts\activate.bat" (
    call "%VENV_DIR%\Scripts\activate.bat"
) else (
    echo Activation script not found. Make sure the virtual environment exists.
    exit /b 1
)
