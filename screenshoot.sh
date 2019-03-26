#!/bin/bash
# Author: Pablo Iranzo Gómez (Pablo.Iranzo@gmail.com)  https://iranzo.github.io
# Description: Takes a screenshoot of current window root (X)

DATE=`date +%Y-%m-%d\ %H:%M:%S`
import -window root "$HOME/Imágenes/screenshot $DATE.png"
