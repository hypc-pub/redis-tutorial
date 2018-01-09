#!/bin/bash

# npm install --global pageres-cli
pageres redis.io 1024x300 --crop --filename='images/<%= url %>-<%= size %>'
