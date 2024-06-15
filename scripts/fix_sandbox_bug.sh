#!/bin/bash

source ./scripts/utils.sh

if [ checkPackageJson -eq 1 ]; then
    echo "Package.json was not found!"
    exit
fi

echo "Fixing SUID sandbox problem"

sudo chown root ./node_modules/electron/dist/chrome-sandbox
sudo chmod 4755 ./node_modules/electron/dist/chrome-sandbox
echo "Done"