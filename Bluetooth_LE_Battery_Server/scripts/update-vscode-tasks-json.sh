#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Copy tasks.json file into .vscode directory
## % ./scripts/update-vscode-tasks-json.sh
##

cp ./vscode-json/tasks.json ./.vscode/tasks.json
