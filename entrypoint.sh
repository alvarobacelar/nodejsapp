#!/bin/bash

#build app

cd /usr/src/app

npm install

bower install

grunt build

grunt serve
