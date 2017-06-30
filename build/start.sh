#!/bin/bash

CONFIG_FILE="/config/config.cfg"
if [ ! -f $CONFIG_FILE ]; then
   echo "Creating default config file"
   cp default.cfg.example /config/default.cfg
fi

python lendingbot.py