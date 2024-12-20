#!/bin/sh

# we need to build the setup tool first
gcc -o setup_t setup/tool.c

# run setup tool to generate Xcode project generator
./setup_t \
    -t mcar \
    -sound 1 \
    -drives 20 \
    -sony-tag 1 \
    -sony-sum 1 \
    -sony-dc42 1 \
    $@ \
    > setup.sh

# generate Xcode project
bash ./setup.sh

# Open Xcode project
echo "A ROM file (vMac.ROM) and a disk image (disk1.dsk) are required to "
echo "run Mini vMac, place them in this directory and build the project."
echo ""
echo "Opening Xcode project..."
open minivmac.xcodeproj
