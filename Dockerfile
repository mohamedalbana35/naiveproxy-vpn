FROM zydou/naiveproxy:x86_64

COPY naive /usr/bin/naive

RUN chmod +x /usr/bin/naive

COPY config.json /app/config.json
COPY cert.pem /app/cert.pem
COPY key.pem /app/key.pem

CMD ["/usr/bin/naive", "-config", "/app/config.json"]
