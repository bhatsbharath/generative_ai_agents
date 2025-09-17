@echo off
echo Pulling Ollama models...

ollama pull llama3.2-vision
if errorlevel 1 (
    echo Failed to pull llama3.2-vision
) else (
    echo Successfully pulled llama3.2-vision
)

ollama pull nomic-embed-text
if errorlevel 1 (
    echo Failed to pull nomic-embed-text
) else (
    echo Successfully pulled nomic-embed-text
)

ollama pull llama3
if errorlevel 1 (
    echo Failed to pull llama3
) else (
    echo Successfully pulled llama3
)

ollama pull llava
if errorlevel 1 (
    echo Failed to pull llava
) else (
    echo Successfully pulled llava
)

echo Done.
pause
