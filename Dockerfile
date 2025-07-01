FROM zydou/naiveproxy:x86_64

WORKDIR /app

COPY config.json /app/config.json
COPY cert.pem /app/cert.pem
COPY key.pem /app/key.pem

ENV NAIVE_CONFIG /app/config.json
