# WSO2 Docker Project

This project contains Docker configurations for deploying WSO2 API Manager and WSO2 Identity Server using Docker containers. The setup includes custom Dockerfiles for each service, allowing for tailored builds and configurations.

## Project Structure

```
wso2-docker-project
├── apim-repository
│   ├── deployment.toml
│   └── client-truststore.jks
├── is-repository
│   └── deployment.toml
├── wso2am
│   └── Dockerfile
├── wso2is
│   └── Dockerfile
├── postgresql-42.7.6.jar
├── docker-compose.yml
└── README.md
```

## Files Overview

- **apim-repository/deployment.toml**: Configuration settings for the WSO2 API Manager.
- **apim-repository/client-truststore.jks**: Java KeyStore file for SSL/TLS communication.
- **is-repository/deployment.toml**: Configuration settings for the WSO2 Identity Server.
- **wso2am/Dockerfile**: Dockerfile for building the WSO2 API Manager image.
- **wso2is/Dockerfile**: Dockerfile for building the WSO2 Identity Server image.
- **postgresql-42.7.6.jar**: PostgreSQL JDBC driver for database connectivity.
- **docker-compose.yml**: Defines services, networks, and volumes for the Docker containers.

## Setup Instructions

1. **Build the Docker Images**:
   Navigate to the `wso2am` and `wso2is` directories and build the images using the following commands:
   ```bash
   docker build -t wso2am:4.4.0 ./wso2am
   docker build -t wso2is:7.1.0 ./wso2is
   ```

2. **Start the Services**:
   From the root of the project directory, run the following command to start the services defined in `docker-compose.yml`:
   ```bash
   docker-compose up
   ```

3. **Access the Services**:
   - WSO2 API Manager: [https://localhost:9444](https://localhost:9444)
   - WSO2 Identity Server: [https://localhost:9443](https://localhost:9443)

## Usage Guidelines

- Ensure that the PostgreSQL JDBC driver is correctly placed in the project directory for database connectivity.
- Modify the `deployment.toml` files as needed to customize the configurations for your environment.
- Use Docker commands to manage the containers as required (e.g., `docker-compose down` to stop the services).