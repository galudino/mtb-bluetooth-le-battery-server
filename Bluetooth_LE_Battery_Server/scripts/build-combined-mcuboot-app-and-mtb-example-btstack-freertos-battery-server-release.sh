#!/bin/sh

##
## USAGE:
## Invoke while in the Bluetooth_LE_Battery_Server directory.
##
## % pwd
## /path/to/mtb-bluetooth-le-battery-server/Bluetooth_LE_Battery_Server
##
## # Build combined MCUBoot and mtb-example-btstack-freertos-battery-server release hex file
## % ./scripts/build-combined-mcuboot-app-and-mtb-example-btstack-freertos-battery-server-release.sh nocopy
##
## # Use the "copy" argument to copy the final combined hex to current directory
## % ./scripts/build-combined-mcuboot-app-and-mtb-example-btstack-freertos-battery-server-release.sh copy
##

function main() {
    ## Build the MCUBoot application
    ./scripts/build-mcuboot-app-release.sh nocopy

    ## Build the main application (mtb-example-btstack-freertos-battery-server)
    ./scripts/build-mtb-example-btstack-freertos-battery-server-release.sh nocopy

    ## Combine the MCUBoot and main application hex files
    ./scripts/combine-mcuboot-app-and-mtb-example-btstack-freertos-battery-server-release.sh
}

main
