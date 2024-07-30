# Archived
115 has stopped their support and service of 115PC on 2024-07-25.

# 115-docker
A 115 container based on noVNC. You may access 115 directly from browser, with all login and session information persistently stored.

## How to use
### Docker Run
A single command would be enough to run the container:

```bash
docker run -d \
    -p 44582:5800 \
    -v /path/to/mount:/mnt \
    -v /path/to/config:/config \
    --no-healthcheck --name=115PC \
    docker.io/akizu/115-docker:latest
```

> [!TIP]
> You may simply replace `docker` with `podman` if you're using podman.

### Access the Interface
After starting the container, open your web browser and navigate to **`http://localhost:44582`**. You should see the noVNC interface, through which you can interact with the 115 desktop app.

## Credits
- Base Image from [jlesage/baseimage-gui](https://github.com/jlesage/docker-baseimage-gui)
