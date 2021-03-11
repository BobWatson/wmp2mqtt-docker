# wmp2mqtt-docker
A simple Docker image for https://github.com/jpg0/wmp2mqtt

Docker Hub: https://hub.docker.com/r/bossett/wmp2mqtt

Requires the environment:

```
MQTT_SERVER (MQTT server, default mqtt://127.0.0.1:1883)

WMP_IPS (comma separated IPs for WMP devices to look for, default "")

DISCOVER (discovery true or false, default "false")
```

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
