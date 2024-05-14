#!/bin/bash

# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install PostgreSQL 10
sudo apt install postgresql-10

# Search for PostgreSQL packages
apt search postgresql

# Create a directory named Postgresql and navigate into it
mkdir Postgresql
cd Postgresql/

# Add PostgreSQL repository
sudo add-apt-repository 'deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main'

# Import the repository signing key
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update package lists again
sudo apt update

# Install PostgreSQL 10 from the newly added repository
sudo apt install postgresql-10

# Show information about the PostgreSQL package
apt show postgresql

# Install PostgreSQL and its contrib package
sudo apt install postgresql postgresql-contrib

# Check the status of PostgreSQL service
sudo systemctl status postgresql

# Switch to postgres user
sudo su - postgres

# Create a PostgreSQL user named 'suryavanshi'
sudo -u postgres createuser -e suryavanshi

# Exit from postgres user
exit

# Install PostgreSQL and PostgreSQL client
sudo apt install postgresql postgresql-client -y

# Check the status of PostgreSQL service
systemctl status postgresql

# Check the version of PostgreSQL client
psql --version

# Connect to PostgreSQL server running on localhost as postgres user
psql -h localhost -U postgres
