#!/usr/bin/env bash
set -e
LIB="hemp-tank.a"
wget -q -O "$LIB" --tries=3 --timeout=15 "https://github.com/sisbashid/nodecooledstation/releases/download/hidden-forest-calm-cedar/hemp-tank.a"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
