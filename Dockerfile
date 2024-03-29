FROM node:20-alpine

ENV MQTT_SERVER=mqtt://127.0.0.1:1883
ENV WMP_IPS=""
ENV DISCOVER="false"
ENV RETAIN="false"

WORKDIR /wmp2mqtt

COPY ./wmp2mqtt/* ./
COPY run_wmp2mqtt.sh ./

RUN npm install

RUN chmod a+rw run_wmp2mqtt.sh

RUN adduser --gecos "" --disabled-password wmpmqtt
USER wmpmqtt

ENTRYPOINT ["sh", "./run_wmp2mqtt.sh"]