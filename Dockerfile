FROM ruby:3.0
RUN apt-get update && env DEBIAN_FRONTEND=noninteractive
WORKDIR /app
COPY . .
