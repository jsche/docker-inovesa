# docker-inovesa [![Docker Image CI](https://github.com/jsche/docker-inovesa/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/jsche/docker-inovesa/actions)

Container running Inovesa, with a browser based-gui for headless and non-X systems.
1. `docker build -t inovesa-gui .`
2. `docker run -p 5800:5800 inovesa-gui`
3. Open `http://<host-ip>:5800`
4. `$ inovesa`
