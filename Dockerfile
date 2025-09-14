FROM python:3.11-slim-bookworm

RUN pip install --no-cache-dir awscli
WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
