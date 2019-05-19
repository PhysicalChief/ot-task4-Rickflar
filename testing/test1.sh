#!/usr/bin/env bash
echo "[INFO] Test #1 - Launch test"
if ! ./LinuxServer/LinuxServer 27015
then
    echo -e "[ERROR] Test failed\n"
else
    echo -e "[INFO] Test passed\n"
    exit 1
fi
