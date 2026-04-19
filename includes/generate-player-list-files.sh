#!/bin/bash

if [[ -n $OPS_LIST ]]; then
    rm ops.json
    echo $OPS_LIST | tr ',' '\n' > ops.txt
fi

if [[ -n "$ALLOW_LIST" ]]; then
    rm whitelist.json
    echo $ALLOW_LIST | tr ',' '\n' > white-list.txt
fi