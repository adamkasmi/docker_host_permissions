#!/bin/bash

# Define the directory
DIR="/var/opt/airflow/"

# Clone the repository (optional if you've already done this step)
# sudo git clone [REPOSITORY_URL] $DIR

# Set the ownership to your user (UID 2062 and GID 2062)
sudo chown -R 2062:2062 $DIR

# Set the group to root (GID 0) to ensure Airflow container access
sudo chgrp -R 0 $DIR

# Set permissions:
# - Directories: rwxr-xr-x (755)
# - Files: rw-r--r-- (644)
sudo find $DIR -type d -exec chmod 755 {} \;
sudo find $DIR -type f -exec chmod 644 {} \;

echo "Permissions set for $DIR and its contents."
