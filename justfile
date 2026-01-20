set shell := ["nu", "-l", "-c"]

fetch:
    git pull origin master

build:
    cargo build --release

install:
    cargo install --path helix-term --locked

all: fetch build install
