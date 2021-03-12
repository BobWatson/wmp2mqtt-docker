# wmp2mqtt-docker
A simple Docker image for https://github.com/jpg0/wmp2mqtt

Docker Hub: https://hub.docker.com/r/bossett/wmp2mqtt

Please report any issues in the repository issue tracker at https://github.com/BobWatson/wmp2mqtt-docker/issues

Requires the environment:

```
MQTT_SERVER (MQTT server, default mqtt://127.0.0.1:1883)

WMP_IPS (comma separated IPs for WMP devices to look for, default "")

DISCOVER (discovery true or false, default "false")
```

Note that to make discovery work, you need your container to run on the same lan as your WMP devices which will require macvlan or host networking.

Example docker-compose.yml:
```
version: '3'
services:
  wmp2mqtt:
    container_name: wmp2mqtt
    image: bossett/wmp2mqtt:latest
    environment:
     - MQTT_SERVER=mqtt://192.168.10.1:1883
     - WMP_IPS=192.168.10.2,192.168.10.3
     - DISCOVER=false
    restart: unless-stopped
```
