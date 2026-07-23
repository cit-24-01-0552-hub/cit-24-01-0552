# Multi-Container Web Application Assignment

## Deployment Requirements
* Docker Engine
* Bash Terminal

## Application Description
This application consists of a Python Flask web application connected to a Redis database to track visitor count using persistent storage.

## Network and Volume Details
* **Network (`app-network`):** Custom bridge network for inter-container communication.
* **Volume (`redis_data`):** Named volume for Redis state persistence.

## Container List
| Container Name | Role | Port | Persistent Volume |
| :--- | :--- | :--- | :--- |
| `redis-db` | Redis Database | 6379 | `redis_data` |
| `web-app` | Flask Web Application | 5000 | N/A |

## Instructions
* Prepare: `./prepare-app.sh`
* Run: `./start-app.sh`
* Access: `http://localhost:5000`
* Pause: `./stop-app.sh`
* Delete: `./remove-app.sh`
