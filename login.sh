#!/bin/sh
pwd
cd ..
git clone https://github.com/sonuishaq67/sonuishaq67.github.io 
cd ../sonuishaq67.github.io
rm -r *
cd ../website_src
apt-get update
apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback lib32stdc++6 python3
touch /root/.netrc
git clone https://github.com/flutter/flutter.git /usr/local/flutter -b dev --depth 1
PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"
flutter doctor -v
flutter channel dev
flutter upgrade
flutter config --enable-web
flutter config --no-enable-ios
flutter config --no-enable-android
git config --global user.name "Ishaq Shaik"
git config --global user.email "ishaqshaik084@gmail.com"
echo "machine github.com" >>/root/.netrc
echo "login $github_username" >>/root/.netrc
echo "password $github_password" >>/root/.netrc
flutter clean
flutter build web 
commitMsg=$(git log -1 | tail -n 1)
cp -r build/web/* ../sonuishaq67.github.io/
cd sonuishaq67.github.io && git add . && git commit -m $commitMsg && git push
