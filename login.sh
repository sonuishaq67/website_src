#!/bin/sh

touch /root/.netrc
echo "machine github.com" >>/root/.netrc
echo "login $username" >>/root/.netrc
echo "password $password" >>/root/.netrc
