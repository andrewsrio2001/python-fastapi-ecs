FROM python:3.10-slim

WORKDIR /app

COPY dependencies/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src

EXPOSE 4082

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "4082"]
