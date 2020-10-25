FROM ruby:2.7.1

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash

RUN apt-get update && \
  apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  vim

RUN npm install -g yarn phantomjs-prebuilt --unsafe-perm

# install chrome
RUN apt-get update && \
    apt-get install -y gconf-service libasound2 libatk1.0-0 libcairo2 libcups2 \
    libfontconfig1 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libxss1 \
    fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

RUN apt-get install -y postgresql-client
RUN apt install libsodium-dev  -y
RUN apt install python3-pip -y

RUN mkdir -p /app
WORKDIR /app