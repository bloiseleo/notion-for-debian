#!/bin/bash

source ./scripts/utils.sh

if [ checkPackageJson -eq 1 ]; then
    echo "Package.json was not found!"
    exit
fi

echo "Package.json found!"
echo "Building .deb package"
npx electron-forge make --targets @electron-forge/maker-deb --arch x64
npx electron-forge make --targets @electron-forge/maker-deb --arch arm64
echo "Done"
