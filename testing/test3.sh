#!/usr/bin/env bash
echo "[INFO] Test #3 - Invalid port"
if ! ./LinuxServer/LinuxServer hello
then
    echo -e "[INFO] Test passed\n"
else
    echo -e "[ERROR] Test failed\n"
    exit 1
fi
