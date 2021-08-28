#!/bin/sh
ARGS=""

if ! [ "${WMP_IPS}" = "" ]
then
    ARGS="${ARGS} --wmp ${WMP_IPS}"
    echo "Got IP(s): ${WMP_IPS}"
fi

if [ "${DISCOVER}" = "true" ]
then
    ARGS="${ARGS} --discover"
    echo "Discovery is on"
fi

if [ "${RETAIN}" = "true" ]
then
    ARGS="${ARGS} --retain ${RETAIN}"
    echo "Discovery is on"
fi

echo "Using server ${MQTT_SERVER}"

ARGS="${ARGS} --mqtt ${MQTT_SERVER}"

node app.js $ARGS