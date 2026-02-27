From python:3.11-slim

WORKDIR /app

COPY memory_info.py .
COPY requirements.txt .

RUN python3 -m pip install --no-cache-dir -r requirements.txt
RUN python3 -m pip install psutil -U
RUN mkdir -p /app/data

ENTRYPOINT ["python3", "memory_info.py"]


