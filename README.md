# Monitoring Stack with Prometheus, Zabbix, and Grafana

This repository provides a simple and comprehensive monitoring stack using Prometheus, Zabbix, and Grafana. The stack is integrated and managed using Ansible and Docker. Below you will find the steps to set up and configure the monitoring stack, as well as additional resources for integration and usage.

## Prerequisites

- Basic knowledge of Ansible and Docker
- Docker and Docker Compose installed on your server

## Installation

Follow these steps to set up the monitoring stack on your server:

1. **Clone the repository**:
    ```sh
    git clone https://github.com/dubuntu13/monitoring-stack-zbx-pro-grf
    cd monitoring-stack-zbx-pro-grf/monitoring_build
    ```

2. **Build and run the Docker containers**:
    ```sh
    sudo docker-compose up -d
    ```
    This will take a few minutes to download all images and build the containers.

3. **Verify the containers**:
    ```sh
    docker ps
    ```
    Ensure all containers are running correctly. Once they are up, you should be able to access the UIs for Prometheus, Zabbix, and Grafana.

## Integration Guides

- **Integrate Zabbix with Grafana**: Follow the instructions [here](https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app).
- **Integrate Prometheus with Grafana**: Follow the instructions [here](https://grafana.com/docs/grafana/latest/getting-started/get-started-grafana-prometheus).

> **Note**: After the first time you start the containers, comment out the Grafana plugin command to prevent it from running each time you start the containers.

## Ansible Setup

The `./ansible` directory contains playbooks to install Zabbix-Agent, Pushgateway, and Node_exporter on your production environment. These playbooks are kept up-to-date and compatible with the project. 

## Usage

### Access the UIs

- **Prometheus**: `http://<your-server-ip>:9090`
- **Zabbix**: `http://<your-server-ip>:10051`
- **Grafana**: `http://<your-server-ip>:3000`

### Managing the Stack

To stop the stack:
```sh
sudo docker-compose down
```

### Ansible Setup

The `./ansible` directory contains playbooks to install Zabbix-Agent, Pushgateway, and Node_exporter on your production environment. These playbooks are kept up-to-date and compatible with the project. 


