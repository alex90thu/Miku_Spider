#!/usr/bin/env bash
# Run the example FastAPI app (binds 0.0.0.0:8000)
# Usage: ./run.sh [host] [port]
HOST=${1:-0.0.0.0}
PORT=${2:-8000}
exec uvicorn examples.fastapi_llm.app:app --host "$HOST" --port "$PORT" --reload
