#!/bin/bash

if [ -e "$1" ]; then
  exec "$@"
else
  exec /bin/bash
fi
