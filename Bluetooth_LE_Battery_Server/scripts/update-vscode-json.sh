#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Copy tasks.json and launch.json files into .vscode directory
## % ./scripts/update-vscode-json.sh
##

./scripts/update-vscode-tasks-json.sh && ./scripts/update-vscode-launch-json.sh
