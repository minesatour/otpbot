#!/bin/bash

# This script downloads the GeckoDriver executable for Firefox WebDriver
# Make sure to run this script in the directory where you want to place the GeckoDriver executable

# Define the GeckoDriver version
GECKODRIVER_VERSION="v0.30.0"

# Define the download URL for the GeckoDriver executable
DOWNLOAD_URL="https://github.com/mozilla/geckodriver/releases/download/$GECKODRIVER_VERSION/geckodriver-$GECKODRIVER_VERSION-linux64.tar.gz"

# Define the file name for the downloaded archive
ARCHIVE_NAME="geckodriver-$GECKODRIVER_VERSION-linux64.tar.gz"

# Download the GeckoDriver archive
echo "Downloading GeckoDriver..."
wget "$DOWNLOAD_URL"

# Extract the GeckoDriver executable from the archive
echo "Extracting GeckoDriver..."
tar -xzf "$ARCHIVE_NAME"

# Make the GeckoDriver executable accessible
chmod +x geckodriver

# Clean up: remove the downloaded archive
echo "Cleaning up..."
rm "$ARCHIVE_NAME"

echo "GeckoDriver installation completed."
