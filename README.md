## 115-docker
A 115 browser container based on [Webtop](https://github.com/linuxserver/docker-webtop). You may access 115 browser with [KasmVNC](https://github.com/kasmtech/KasmVNC).

## How to use
### Docker Run
A single command would be enough to run the container:

```bash
docker run -d \
    -p 44582:3000 \
    -v /path/to/mount:/mnt \
    -v /path/to/config:/config/.config/chromium \
    --name=115 docker.io/akizu/115-docker:latest
```
Mount `/config/.config/chromium` in order to persistently store the config.

> [!TIP]
> You may simply replace `docker` with `podman` if you're using podman.

### Access the Interface
After starting the container, navigate to **`http://localhost:44582`**. You should see the KasmVNC interface, through which you can interact with the 115 browser.
