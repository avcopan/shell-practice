#!/usr/bin/env bash

# awk '{print $2;}' colors.txt  # print the second column of text
# awk '{print $0;}' colors.txt  # print all columns of text
# awk '$2=="yellow"{print $1}' colors.txt  # print the first column when the second is yellow
# awk -F":" '{print $1;}' info.log  # print the first column
# awk -F":" '{gsub(/^[ \t]+/, "", $1); print $1;} ' info.log

# Parse the manifest file location from `pixi info`
awk -F":" '$1~/Manifest file/{gsub(/ /, "", $2); print $2;}' info.log
