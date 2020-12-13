# syntax=docker/dockerfile:experimental
#source image
FROM ubuntu:latest AS build-env
#updating the system
RUN sudo apt-get update
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
RUN apt-get clean
RUN git clone https://github.com/flutter/flutter.git /usr/local/flutter -b dev --depth 1
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"
RUN flutter doctor -v
RUN flutter channel dev
RUN flutter upgrade
RUN flutter config --enable-web
RUN flutter config --no-enable-ios
RUN flutter config --no-enable-android



RUN git config --global user.name "Ishaq Shaik"
RUN git config --global user.email "ishaqshaik084@gmail.com"


# cloning my target repo
RUN sudo git clone https://github.com/sonuishaq67/sonuishaq67.github.io
RUN flutter upgrade
#removing everything lol?
RUN cd sonuishaq67.github.io && sudo rm -r * && cd ..

RUN sudo mkdir webapp

COPY . /webapp/

WORKDIR /webapp/
RUN sudo ./login.sh
RUN sudo /home/cirrus/sdks/flutter/bin/flutter clean
RUN sudo /home/cirrus/sdks/flutter/bin/flutter build web -v

RUN commitMsg=$(git log -1 | tail -n 1)

RUN cd build/web

RUN sudo cp -r ./*  /sonuishaq67.github.io/

RUN sudo cd sonuishaq67.github.io && git add . && git commit -m $commitMsg && git push 