@echo off
SETLOCAL ENABLEEXTENSIONS

REM Set default virtual environment path
SET "VENV_DIR=venv"
SET "KERNEL_NAME=venv"
SET "DISPLAY_NAME=Python (agentEnv)"

REM Check if the venv is activated
IF "%VIRTUAL_ENV%"=="" (
    REM Try to activate it
    IF EXIST "%VENV_DIR%\Scripts\activate.bat" (
        echo [INFO] Activating virtual environment from %VENV_DIR%...
        call "%VENV_DIR%\Scripts\activate.bat"
    ) ELSE (
        echo [ERROR] Virtual environment not found at "%VENV_DIR%". Please create it first.
        EXIT /B 1
    )
)

REM Check again after attempting activation
IF "%VIRTUAL_ENV%"=="" (
    echo [ERROR] Virtual environment is still not activated. Exiting.
    EXIT /B 1
)

REM Check if jupyter is installed
where jupyter >nul 2>&1
IF ERRORLEVEL 1 (
    echo [INFO] Jupyter not found. Installing Jupyter Notebook and ipykernel...
    pip install --upgrade pip
    pip install jupyter ipykernel
) ELSE (
    echo [INFO] Jupyter is already installed.
)

REM Register the virtual environment as a Jupyter kernel
echo [INFO] Registering kernel with name "%KERNEL_NAME%" and display name "%DISPLAY_NAME%"...
python -m ipykernel install --user --name="%KERNEL_NAME%" --display-name="%DISPLAY_NAME%"

echo.
echo ✅ Jupyter kernel registered successfully!
echo You can now launch Jupyter Notebook and select kernel "%DISPLAY_NAME%"

ENDLOCAL
