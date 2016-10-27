#!/bin/bash
cd docker && \
  docker-compose stop && \
  docker-compose rm --all -f && \
  docker build -t ansible-env-setup . && \
  docker-compose up -d && \
  docker-compose logs -f
