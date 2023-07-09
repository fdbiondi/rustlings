FROM rust:latest

WORKDIR /usr/src/app
COPY . .

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y sqlite3
    # apt-get install -y curl

RUN cargo install --path .
RUN cargo install cargo-watch

#ENTRYPOINT ["bash", "-c", "cd /usr/src/app"]

# CMD ["tail", "-f", "/dev/null"]

CMD ["app"]
