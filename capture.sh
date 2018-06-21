#!/bin/bash

# npm install --global pageres-cli
filename="images/<%= url %>-<%= size %>"
if test ! -f "images/redis.io-1024x300.png"; then
    pageres redis.io 1024x300 --crop --overwrite --filename="$filename"
fi
if test ! -f "images/redisdesktop.com-1024x300.png"; then
    pageres redisdesktop.com 1024x300 --crop --overwrite --filename="$filename"
fi
