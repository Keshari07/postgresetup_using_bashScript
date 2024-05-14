#!/bin/bash

# Update package index
sudo apt update

# Install PostgreSQL 10.5
sudo apt install postgresql-10

# Start PostgreSQL service
sudo systemctl start postgresql

# Enable PostgreSQL service to start on boot
sudo systemctl enable postgresql

# Access PostgreSQL prompt
sudo -u postgres psql << EOF

# Change PostgreSQL "postgres" user password (Optional)
\password postgres

# Create a new role (user)
CREATE ROLE myuser WITH LOGIN PASSWORD 'mypassword';

# Create a database (Optional)
CREATE DATABASE mydatabase;

# Grant privileges (Optional)
GRANT ALL PRIVILEGES ON DATABASE mydatabase TO myuser;

# Exit PostgreSQL prompt
\q
EOF

# Configure PostgreSQL to listen on a custom port (Optional)
sudo sed -i 's/#port = 5432/port = 5433/' /etc/postgresql/10/main/postgresql.conf

# Restart PostgreSQL service
sudo systemctl restart postgresql

echo "PostgreSQL 10.5 installation and configuration completed."
