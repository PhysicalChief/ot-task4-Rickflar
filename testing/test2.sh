#!/usr/bin/env bash
echo "[INFO] Test #2 - Arguments test"
if ! ./LinuxServer/LinuxServer 27015 27015 27015
then
    echo -e "[INFO] Test passed\n"
else
    echo -e "[ERROR] Test failed\n"
    exit 1
fi
