#!/bin/bash

echo "Creating file in /opt..."

sudo touch /opt/vibhakar.txt

echo "Hello Vibhakar, this file is created by script." | sudo tee /opt/vibhakar.txt

echo "File created successfully."

echo "Showing file permissions:"
ls -l /opt/vibhakar.txt
