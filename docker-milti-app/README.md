# Docker Multi-Container Application

This project demonstrates how to build and run a multi-container
application using Docker Compose.

## 📦SERVICES

The application consists of three containers:

- **Nginx** — Web server
- **Redis** — in-memory database (cache) 
- **MySQL** — Relational database

---

## Technologies Used

- Docker Desktop
- Docker Compose (v2)
- Nginx (latest)
- Redis (latest)
- MySQL 8.0

---

## 🚀Getting  Started

```bash
cd docker-multi-app

## Run the application 

docker compose up -d

## Access the Application

Open your browser and go to:

http://localhost:8080

You should see:

Welcome to nginx!


## Project Structure

docker-multi-app/
 ├── docker-compose.yml
 └── README.md

## Volumes

The project uses a Docker volume:

mysql_data — persists MySQL database data

Check volumes:

docker volume ls

## Network

All containers are connected via a custom Docker network:

mynetwork

This allows services to communicate using their service names:

mysql:3306
redis:6379


## Stop the Application

docker compose down

Note: The MySQL data will remain stored in the volume.

## Learning Objectives

Understand Docker Compose

Work with multi-container applications

Configure container networking

Persist data using volumes



