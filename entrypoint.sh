#!/bin/bash

#build app

cd /usr/src/app

npm install

bower cache clean

bower install

grunt build

grunt serve
