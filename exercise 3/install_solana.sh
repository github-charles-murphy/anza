#!/bin/bash

# Script to install Solana CLI tools
# Based on https://docs.anza.xyz/cli/install

echo "Installing Solana CLI tools (Agave v2.2.0)..."

# Detect OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Detected Linux OS"
    sh -c "$(curl -sSfL https://release.anza.xyz/v2.2.0/install)"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Detected macOS"
    sh -c "$(curl -sSfL https://release.anza.xyz/v2.2.0/install)"
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "Detected Windows OS"
    echo "Please run the following commands in an Administrator Command Prompt:"
    echo "cmd /c \"curl https://release.anza.xyz/v2.2.0/agave-install-init-x86_64-pc-windows-msvc.exe --output C:\agave-install-tmp\agave-install-init.exe --create-dirs\""
    echo "C:\agave-install-tmp\agave-install-init.exe v2.2.0"
    exit 1
else
    echo "Unsupported OS: $OSTYPE"
    echo "Please follow manual installation instructions at https://docs.anza.xyz/cli/install"
    exit 1
fi

# Check if installation was successful
if command -v solana &> /dev/null; then
    echo "Solana CLI tools installed successfully!"
    echo "Current version: $(solana --version)"
    echo ""
    echo "You can update anytime using: agave-install update"
else
    echo "Installation may not have completed successfully."
    echo "Please check if Solana is in your PATH and try running 'solana --version'"
fi
