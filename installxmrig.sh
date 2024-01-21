#!/bin/bash

set -e
echo "Installation des composants par defaut"
apt update && apt upgrade -y
apt install cmake -y
apt install screen -y
echo "Clonage du repo xmrig"
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build
cd xmrig/build
# cmake
echo "Preparation de la compilation de xmrig"
if ! cmake -DWITH_HWLOC=OFF ..; then
    echo "Erreur: impossible de preparer la compilation"
    exit 1
else
    cmake -DWITH_HWLOC=OFF ..
fi
# compile
echo "Compilation de xmrig"
if ! make; then
    echo "Erreur lors de la compilation, veillez réessayer."
    exit 1
else
    make && echo "Compilation terminée."
fi
