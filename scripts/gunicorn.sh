#!/usr/bin/env bash

# Kill previous process
bash kill.sh
# Start Process
cd ../
gunicorn -c conf/gunicorn.conf app:app
