#!/bin/bash
# Author: Pablo Iranzo Gómez (Pablo.Iranzo@gmail.com)  https://iranzo.github.io
# Description: Defines date of the file headers based on the filename

rename -v '.JPG' '.jpg' *
exiftool "-datetimeoriginal<filename" *.jpg
rm -fv *_original
