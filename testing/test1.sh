#!/usr/bin/env bash
echo "[INFO] Test #1 - Launch test"
if ! ./LinuxServer/LinuxServer
then
    echo -e "[INFO] Test passed\n"
    exit 1
else
    echo -e "[ERROR] Test failed\n"
fi
