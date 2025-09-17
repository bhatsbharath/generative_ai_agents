# Generative AI & Agents

Quick start repository into local deployment of large language models (LLMs) and agents framework.

## Getting Started

### Dependencies

* Windows, Ollama

### Installation & Setup
* Clone the repository and open in VS code
```
git clone https://github.com/bhatsbharath/generative_ai_agents.git
cd generative_ai_agents
code .
```

### Download and install Python (Tested with 3.12.7)
```
https://www.python.org/downloads/release/python-3127/
```

### Create and activate virtual environment (run the batch scripts)
```
https://www.python.org/downloads/release/python-3127/
```

### Install Python dependencies inside the activated environment
```
pip install -r requirements.txt
```

### Setup Jupyter notebook environment
```
.\setup_jupyter_environment.bat
```

### Download & Install Ollama
```
https://ollama.com/download
```

### Download all required models using the batch script
```
.\download_models.bat
```
Or pull individuall using the below command (Eg: for llama3)
```
ollama pull llama3
```
To list all available models
```
ollama list
```


## Compilation
 Bharath Bhat


## Acknowledgments
* [Youtube](https://www.youtube.com/watch?v=eV-zVWClcj0&list=PLp01ObP3udmq2quR-RfrX4zNut_t_kNot&index=22)
* Langchain cookbook
