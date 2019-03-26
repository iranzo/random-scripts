#!/bin/bash
# Author: Pablo Iranzo Gómez (Pablo.Iranzo@gmail.com)  https://iranzo.github.io
# Description: Renames and rotates jpg files to have date in the name

renrot --name-template="%Y-%m-%d %H.%M.%S" "$@"
rm *_orig
