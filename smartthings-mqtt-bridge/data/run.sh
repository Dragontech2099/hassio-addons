#!/usr/bin/with-contenv bashio

CONFIG_PATH=/data/options.json
MQTT_CONN=$(jq --raw-output ".mqtt_conn" $CONFIG_PATH)
MQTT_PREFACE=$(jq --raw-output ".mqtt_preface" $CONFIG_PATH)
sed -i "s|mqtt_conn|${MQTT_CONN}|g"  /opt/config/config.yml
sed -i "s|mqtt_preface|${MQTT_PREFACE}|g"  /opt/config/config.yml
cat  /opt/config/config.yml
ls
npm start