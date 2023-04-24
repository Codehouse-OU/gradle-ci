FROM gradle:8.1.1-jdk17
MAINTAINER markus.karileet@codehouse.ee

RUN apt update
RUN apt install ssh git -y

RUN mkdir /app
WORKDIR /app

RUN useradd -ms /bin/bash ci-user
USER ci-user
