FROM node:14

ENV MQTT_SERVER=mqtt://127.0.0.1:1883
ENV WMP_IPS=""
ENV DISCOVER="false"

WORKDIR /wmp2mqtt

RUN git clone https://github.com/jpg0/wmp2mqtt.git
COPY run_wmp2mqtt.sh ./

RUN npm install

CMD ["./run_wmp2mqtt.sh"]