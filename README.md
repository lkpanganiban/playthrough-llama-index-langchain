# Learning Llama Index and Langchain

This is a toy repo that allow me to learn llama index and langchain. This implements an on-prem setup of the langchain and llama_index.

## Requirements

### Software

- Python 3.9+
- Langchain
- Llama Index
- Jupyter
- Docker and docker-compose (for the weaviate and opensearch database)

### Hardware

The following specs are the hardware used to run these notebooks.

- M1 8 CPU Cores and 8 GPU Cores
- 16 GB

## Setup

Put the following models under the `models` directory:

- [llama-2-7b-chat.Q4_0.gguf](https://huggingface.co/TheBloke/Llama-2-7b-Chat-GGUF/resolve/main/llama-2-7b-chat.Q4_0.gguf)
- [dolphin-2.0-mistral-7b.Q3_K_M.gguf](https://huggingface.co/TheBloke/dolphin-2.0-mistral-7B-GGUF/resolve/main/dolphin-2.0-mistral-7b.Q3_K_M.gguf)

## Notes

- Refer to the individual implementations folder for the additional setup (if any).
