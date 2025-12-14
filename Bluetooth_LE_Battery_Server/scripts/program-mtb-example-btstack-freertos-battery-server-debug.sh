#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Program the POC's CM4 core with the debug build of mtb-example-btstack-freertos-battery-server.
## % ./scripts/program-mtb-example-btstack-freertos-battery-server-debug.sh
##
## IMPORTANT:
## Run this script AFTER you have run ./build-mcuboot-app-debug.sh and flashed MCUBootApp_Debug.hex.
## You can use ModusToolbox Programmer to flash MCUBootApp_Debug.hex.
## mcuboot will automatically be flashed to Core CM0.

## Also note: For Bluetooth to work properly, *** DON'T USE THIS BUILD **.
## Bluetooth will not work as intended in the Debug config. (unless you're in the debugger)
##

function start_python_env() {
    python3 -m venv ~/.mtb-venv
    source ~/.mtb-venv/bin/activate
    pip install click cryptography intelhex
}

function main() {
    local config="Debug"
    local app_name="mtb-example-btstack-freertos-battery-server"
    

    start_python_env
    make program CONFIG=$config APPNAME=$app_name
    deactivate
}

main
