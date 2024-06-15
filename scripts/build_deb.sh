#!/bin/bash

source ./scripts/utils.sh

if [ checkPackageJson -eq 1 ]; then
    echo "Package.json was not found!"
    exit
fi

echo "Package.json found!"
echo "Building .deb package"
npx electron-forge make --targets @electron-forge/maker-deb
echo "Done"
