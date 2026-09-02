FROM python:3.12-slim-bookworm

COPY . /app
RUN apt-get update \
    && apt-get install -y --no-install-recommends graphviz \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /storage
RUN pip install --no-cache-dir /app
ENV PMAPPER_STORAGE=/storage

CMD ["sh"]
