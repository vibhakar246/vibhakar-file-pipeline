#!/bin/bash

echo "Creating file vibhakar.txt in /opt..."

# Create empty file
sudo touch /opt/vibhakar.txt

echo "File created successfully."

echo "Permissions applied to the file:"
ls -l /opt/vibhakar.txt
