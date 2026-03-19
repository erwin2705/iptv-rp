FROM python:3.11-slim

WORKDIR /app

# Installeer benodigdheden
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Kopieer de applicatie
COPY ./app /app

# Start FastAPI met Uvicorn (met debug logging)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80", "--log-level", "debug"]