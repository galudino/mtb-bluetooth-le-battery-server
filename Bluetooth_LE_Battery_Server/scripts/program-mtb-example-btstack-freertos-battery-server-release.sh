#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Program the POC's CM4 core with the release build of mtb-example-btstack-freertos-battery-server.
## % ./scripts/program-mtb-example-btstack-freertos-battery-server-release.sh
##
## IMPORTANT:
## Run this script AFTER you have run ./build-mcuboot-app-release.sh and flashed MCUBootApp_Release.hex.
## You can use ModusToolbox Programmer to flash MCUBootApp_Release.hex.
## mcuboot will automatically be flashed to Core CM0.

## Also note: For Bluetooth to work properly, *** USE THIS BUILD **.
## Bluetooth will work as intended in the Release config.
##

function start_python_env() {
    python3 -m venv ~/.mtb-venv
    source ~/.mtb-venv/bin/activate
    pip install click cryptography intelhex
}

function main() {
    local config="Release"
    local app_name="mtb-example-btstack-freertos-battery-server"
    

    start_python_env
    make program CONFIG=$config APPNAME=$app_name
    deactivate
}

main
