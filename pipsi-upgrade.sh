#!/bin/bash
# Author: Pablo Iranzo Gómez (Pablo.Iranzo@gmail.com)  https://iranzo.github.io
# Description: Upgrades al pipsi installed packages in the user folder as well as setuptools and pip

# First, update setuptools and pip
for env in ~/.local/venvs/*; do
    echo "##### $env ######"
    if [ -f $env/bin/activate ]; then
        . $env/bin/activate && pip install -U pip setuptools ; deactivate;
    fi
done

# Then call regular pipsi upgrade
for each in $(pipsi list|grep Package|grep -v "Packages and scripts"|tr ' :"' "\n"|grep -v Package); do
    pipsi upgrade $each
done
