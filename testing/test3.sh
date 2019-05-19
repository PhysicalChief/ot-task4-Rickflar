#!/usr/bin/env bash
echo "[INFO] Test #3 - Invalid port"
if ! ./LinuxServer/LinuxServer hello
then
    echo -e "[ERROR] Test failed\n"
else
    echo -e "[FAILED] Test passed\n"
    exit 1
fi
