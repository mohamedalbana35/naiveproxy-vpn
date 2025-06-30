FROM zydou/naiveproxy:x86_64

COPY naive /usr/bin/naive

RUN chmod +x /usr/bin/naive

COPY config.json /app/config.json

CMD ["/usr/bin/naive", "/app/config.json"]
