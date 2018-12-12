#!/bin/sh

updates=$(yay -Pn 2> /dev/null)

if [[ $updates -gt 0 ]]; then
    echo "$updates updates available"
else
    echo ""
fi
