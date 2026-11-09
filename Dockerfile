# Base Python image
FROM python:3.12-slim

# Python environment configuration
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Create non-root user
RUN groupadd --system app && \
    useradd --system --gid app --create-home app

# Copy application
COPY --chown=app:app app/ ./app/

# Run as non-root user
USER app

# Application port
EXPOSE 8000

# Container health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=10s --retries=3 \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://127.0.0.1:8000/health', timeout=2)" || exit 1

# Start application
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
