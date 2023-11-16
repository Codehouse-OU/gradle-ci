FROM gradle:8.4.0-jdk17
LABEL maintainer="markus.karileet@codehouse.ee"

RUN apt update && \
    apt install ssh git -y && \
    apt clean

RUN mkdir /app
WORKDIR /app

RUN useradd -ms /bin/bash ci-user
USER ci-user
