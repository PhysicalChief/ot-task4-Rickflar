#!/usr/bin/env bash
echo "[INFO] Test #4 - Connection with client"
if [[ $((./LinuxServer/LinuxServer 27015) & (./LinuxClient/LinuxClient)) == *"Test"* ]]
then
    echo -e "[INFO] Test passed\n"
else
    echo -e "[ERROR] Test failed\n"
    exit 1
fi
