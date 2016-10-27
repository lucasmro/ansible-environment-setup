#!/bin/bash
cd docker && \
  docker build -t ansible-env-setup . && \
  docker run --rm -it ansible-env-setup bash
