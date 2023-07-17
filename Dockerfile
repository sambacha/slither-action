# syntax=docker/dockerfile:1
FROM python:3.10.12-bullseye


ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PIP_NO_CACHE_DIR=1

RUN --mount=type=cache,target=/root/.cache \
    pip install --no-cache-dir solc-select

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

