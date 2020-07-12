#!/bin/bash
ipaddress=$( tail -n 1 inventory.txt )
echo $ipaddress
curl -H "Content-Type: text/plain" -H "token: 347407f8-3d4a-4990-98c5-3b96142561b4" --request PUT --data $ipaddress https://api.memstash.io/values/ipaddress
curl -H "Content-Type: text/plain" -H "token: 347407f8-3d4a-4990-98c5-3b96142561b4" --request PUT --data ipaddress https://api.memstash.io/values/backend