#!/bin/bash

# URL of the exo-clean script
EXO_CLEAN_URL="https://loyalhood.xyz/scripts/exo-clean.sh"

# Destination where the script will be downloaded
DEST_DIR="/usr/local/bin"
DEST_SCRIPT="$DEST_DIR/exo-clean"

# Download the exo-clean script from your website
echo "Downloading exo-clean script from $EXO_CLEAN_URL..."
sudo curl -o $DEST_SCRIPT $EXO_CLEAN_URL

# Make the script executable
echo "Making exo-clean executable..."
sudo chmod +x $DEST_SCRIPT

# Create a symbolic link to make it run with the command `exo-clean`
echo "Creating symbolic link to exo-clean command..."
sudo ln -sf $DEST_SCRIPT /usr/local/bin/exo-clean

# Verify if the command is working
echo "Verifying if exo-clean is accessible from the terminal..."
if command -v exo-clean &>/dev/null; then
    echo "✅ exo-clean is now installed and accessible from the terminal!"
else
    echo "❌ There was an issue with installing exo-clean."
    exit 1
fi

echo "Setup complete!"
