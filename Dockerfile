FROM ubuntu:latest

WORKDIR /app

EXPOSE 8000

ENV  HOST=localhost DBPORT=5432

ENV  USER=root PASSWORD=root DBNAME=root

RUN apt-get update && \
    apt-get install -y \
    libc6-dev \
    && rm -rf /var/lib/apt/lists/*

COPY ./main /app/main

RUN chmod +x /app/main

COPY ./templates /app/templates

CMD [ "/app/main" ]
