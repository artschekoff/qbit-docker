# qbit-docker

![QbitX visual](readme/quantum-bitcoin-post.png)

Run a QbitX blockchain node in a clean, reproducible Docker environment.

## Features

- Dockerized QbitX node (`qbitx` + `qbitx-cli`)
- Works with mainnet and testnet setups
- `docker-compose.yml` included for quick local orchestration
- Host data persistence in `./data`

## Requirements

- Docker
- Docker Compose
- QbitX binaries in `./bin`:
  - `./bin/qbitx`
  - `./bin/qbitx-cli`

Download/build binaries from the official site: [qbitx.org/download](https://qbitx.org/download).

## Quick Start

1. Put binaries into `./bin`:

   ```sh
   chmod +x ./bin/qbitx ./bin/qbitx-cli
   ```

2. Build image:

   ```sh
   make build
   # optional platform-specific builds
   make build-amd64
   make build-386
   ```

3. Start node:

   ```sh
   docker compose up -d
   ```

4. Check logs:

   ```sh
   docker compose logs -f
   ```

## Data and Volumes

- Host path: `./data`
- Container path: `/root/.qbitx`

Node data remains on the host between container restarts.

## Useful Commands

```sh
docker compose ps
docker compose restart
docker compose down
make test
```

## License

Provided as-is. For blockchain/project details, see [qbitx.org](https://qbitx.org).
