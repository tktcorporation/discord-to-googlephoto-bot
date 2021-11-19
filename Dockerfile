FROM python:3.9.6-slim-buster AS build-env

ENV LC_ALL=C.UTF-8

RUN apt-get update && \
    apt-get install -y \
    curl

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python - && source $HOME/.poetry/env
