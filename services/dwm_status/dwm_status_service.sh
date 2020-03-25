#!/bin/bash 

RC="${RC:-/opt/dwm_status/dwm_status.conky}"

echo "Starting DWM Status Bar"

conky -c "${RC}" | while read -r; do xsetroot -name "$REPLY"; done
