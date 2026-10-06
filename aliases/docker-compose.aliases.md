# Aliases `Docker Compose`

| Alias       | Command                           | Description                                           |
| :---------- | :-------------------------------- | :---------------------------------------------------- |
| `dc`        | `docker compose`                  | Run a Docker Compose command                          |
| `dco`       | `docker compose`                  | Docker Compose main command                           |
| `dcb`       | `docker compose build`            | Build containers                                      |
| `dcc`       | `docker compose config`           | Parse and render the Compose configuration            |
| `dce`       | `docker compose exec`             | Execute a command inside a container                  |
| `dcps`      | `docker compose ps`               | List containers                                       |
| `dcrestart` | `docker compose restart`          | Restart containers                                    |
| `dcrm`      | `docker compose rm`               | Remove containers                                     |
| `dcr`       | `docker compose run`              | Run a command in a container                          |
| `dcstop`    | `docker compose stop`             | Stop containers                                       |
| `dcup`      | `docker compose up`               | Start and attach to containers                        |
| `dcupb`     | `docker compose up --build`       | Build images, then start containers                   |
| `dcupd`     | `docker compose up -d`            | Start containers in the background                    |
| `dcupdb`    | `docker compose up -d --build`    | Build images, then start containers in the background |
| `dcdn`      | `docker compose down`             | Stop and remove containers                            |
| `dcl`       | `docker compose logs`             | Show container logs                                   |
| `dclf`      | `docker compose logs -f`          | Follow container logs                                 |
| `dclF`      | `docker compose logs -f --tail 0` | Follow new log output only                            |
| `dcpull`    | `docker compose pull`             | Pull service images                                   |
| `dcstart`   | `docker compose start`            | Start containers                                      |
| `dck`       | `docker compose kill`             | Kill containers                                       |
| `dcv`       | `docker compose version`          | Show Docker Compose version                           |
| `dcsts`     | `docker compose stats`            | Show container resource usage                         |
| `dci`       | `docker compose images`           | List Compose images                                   |

The aliases use the legacy `docker-compose` executable when it is available;
otherwise, they use `docker compose`.
