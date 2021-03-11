FROM node:14

ENV MQTT_SERVER=mqtt://127.0.0.1:1883
ENV WMP_IPS=""
ENV DISCOVER="false"

WORKDIR /wmp2mqtt

COPY ./wmp2mqtt/* ./
COPY run_wmp2mqtt.sh ./

RUN npm install

RUN ["chmod", "+x", "./run_wmp2mqtt.sh"]
ENTRYPOINT ["sh", "./run_wmp2mqtt.sh"]