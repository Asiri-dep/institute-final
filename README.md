# MySQL Docker Container Setup

This repository contains Database of a institute using MySQL DBMS.

## Prerequisites

- Docker
- Docker Compose

## Getting Started
Initially need to set up Docker Compose configuration.
Follow the instructions below to get your MySQL container up and running.

### Step 1: Clone the Repository

git clone https://github.com/Asiri-dep/institute-final.git

### Step 2: To start container

docker-compose up 

# The configuration is as follows
services:
container:
environment:
MYSQL_ROOT_PASSWORD: mysql  # Set root password for MySQL
ports:
- 15000:3306  # Map port 15000 on the host to port 3306 in the container
container_name: institute_container  # Name the container
volumes:
- ~/project:/var/lib/mysql  # Mount host directory to container
image: mysql  # Use the MySQL image
