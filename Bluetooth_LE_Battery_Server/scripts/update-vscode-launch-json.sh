#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Copy launch.json file into .vscode directory
## % ./scripts/update-vscode-launch-json.sh
##

cp ./vscode-json/launch.json ./.vscode/launch.json
