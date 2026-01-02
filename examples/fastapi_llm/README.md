# Example: FastAPI + LLM integration (using local miku_ai)

This example shows how to use `miku_ai.get_wexin_article` in a small FastAPI app that calls an LLM (mock by default).

Quick start (development):

1. Install package in editable mode from repo root (so local changes are used):

```bash
# from repo root
pip install -e .
```

2. Create and activate a virtualenv or conda env, then install example deps:

```bash
pip install -r examples/fastapi_llm/requirements.txt
```

3. Run the example app:

```bash
uvicorn examples.fastapi_llm.app:app --reload --port 8000
```

4. Test the endpoint:

```bash
curl -X POST "http://127.0.0.1:8000/summarize" -H "Content-Type: application/json" -d '{"query":"AI搜索MIKU","top":2,"max_age_days":14}'
```

Notes:
- The example uses a mock LLM when `OPENAI_API_KEY` is not set. You can implement a real LLM call in `_call_llm`.
- This example is minimal — for production consider proper timeouts, retries, authentication, and rate-limiting.
