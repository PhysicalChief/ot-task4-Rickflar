#!/usr/bin/env bash
echo "[INFO] Test #1 - Launch test"
if ! ./LinuxServer/LinuxServer 27015
then
    echo -e "[SUCCES] Test passed\n"
else
    echo -e "[ERROR] Test failed\n"
    exit 1
fi