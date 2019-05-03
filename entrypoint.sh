#!/bin/bash

if [ "$1" == "/bin/bash" ]; then
    exec /bin/bash
fi

if [ "$1" == "sleep" ]; then
    exec sleep infinity
fi

/usr/bin/python /app.py
