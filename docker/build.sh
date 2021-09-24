#!/bin/bash

echo "Start build of the documentation..."

cd /srv/output
node --max-old-space-size=8096 /usr/local/bin/redoc-cli bundle --output /srv/output/$APPLICATION_FILE.html /srv/application.yaml
