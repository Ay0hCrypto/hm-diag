#!/usr/bin/env bash

#Run diag
rm /opt/nebraDiagnostics/html/index.html
cp /opt/nebraDiagnostics/html/index.html.template /opt/nebraDiagnostics/html/index.html
nginx
sleep 90
rm /opt/nebraDiagnostics/html/index.html
python3 -u /opt/nebraDiagnostics/diagnosticsProgram.py
