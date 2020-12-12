#source image
FROM  cirrusci/flutter:dev-web
#updating the system
RUN sudo apt-get update

RUN git config --global user.name "Ishaq Shaik"
RUN git config --global user.email "ishaqshaik084@gmail.com"



#cloning my target repo
RUN sudo git clone https://github.com/sonuishaq67/sonuishaq67.github.io

#removing everything lol?
RUN cd sonuishaq67.github.io && sudo rm -r * && cd ..

RUN sudo mkdir webapp

COPY . /webapp/

WORKDIR /webapp/

RUN sudo /home/cirrus/sdks/flutter/bin/flutter clean
RUN sudo /home/cirrus/sdks/flutter/bin/flutter build web -v

RUN commitMsg=$(git log -1 | tail -n 1)

RUN cd build/web

RUN sudo cp -r ./*  /sonuishaq67.github.io/

RUN sudo cd sonuishaq67.github.io && git add . && git commit -m $commitMsg && git push 