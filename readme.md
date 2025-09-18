# Pre-requisite

- [Install Docker (for windows)](https://docs.docker.com/desktop/setup/install/windows-install/)

# Getting started

- ### Run docker-compose to start all the services

  ```sh
  docker-compose up
  ```

- ### If you need to access to the different containers

    - ### Connect to the php container
  ```sh
  docker exec -it docker_php bash
  ```

    - ### Connect to the mysql container
  ```sh
  docker exec -it docker_mysql bash
  ```
  
    - ### Connect to the apache container
  ```sh
  docker exec -it docker_apache bash
  ```

# Documentation

- https://www.docker.com/
