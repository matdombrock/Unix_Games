#!/bin/bash
# Build ch33ter
git clone https://github.com/matdombrock/ch33ter.git || exit 1
cd ch33ter || exit 1
make || exit 1
mv out/macOS/ch33ter /usr/games/ch33ter || exit 1