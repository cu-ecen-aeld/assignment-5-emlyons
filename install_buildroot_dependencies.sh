#!/bin/bash

# List your packages here
PACKAGES=(
    which
    sed
    make #(version 3.81 or any later)
    binutils
    build-essential #(only for Debian based systems)
    diffutils
    gcc #(version 4.8 or any later)
    g++ #(version 4.8 or any later)
    bash
    patch
    gzip
    bzip2
    perl #(version 5.8.7 or any later)
    tar
    cpio
    unzip
    rsync
    file #(must be in /usr/bin/file)
    bc
    findutils
    # awk # already on ubuntu
    wget # already on ubuntu
)

# Update package lists
echo "Updating package lists..."
sudo apt-get update

# Install packages
echo "Installing packages..."
sudo apt-get install -y "${PACKAGES[@]}"

# Done
echo "Installation complete."
