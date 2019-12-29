# [DB Management Essentials](https://www.coursera.org/learn/database-management/home/welcome)

## Links

- https://hub.docker.com/_/mysql

## MySQL Setup

- Run `docker-compose up`
- Naviagate to `http://localhost:8080/`
  - Note: if running on a VM docker, note the `.env` variable `DOCKER_HOST` and replace `localhost` with it.
- Login with:
  - user: `root`
  - password: `example`
  - Note that password can be configured in [docker-compose.yml](docker-compose.yml)
  - use `adminer` to create a database, tables, etc.
