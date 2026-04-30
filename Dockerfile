# ──────────────────────────────────────────────────────────────────────────────
# CreditWise – Loan Approval Predictor
# Dockerfile (FastAPI + Streamlit in one container)
# ──────────────────────────────────────────────────────────────────────────────

FROM python:3.11-slim

# Prevent Python from writing .pyc files & enable unbuffered stdout/stderr
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# Install curl for health check
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies (cached layer)
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Expose ports: 8000 (FastAPI) and 8501 (Streamlit)
EXPOSE 8000 8501

# Streamlit connects to the FastAPI backend inside the same container
ENV BACKEND_URL=http://localhost:8000

# Health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
    CMD curl -f http://localhost:8000/health || exit 1

# Start both services: FastAPI in background, Streamlit in foreground
CMD ["/bin/sh", "-c", "uvicorn main:app --host 0.0.0.0 --port 8000 & sleep 3 && streamlit run app.py --server.port 8501 --server.address 0.0.0.0 --server.headless true --browser.gatherUsageStats false"]
