#!/usr/bin/env bash

# Kill previous process
bash kill.sh
# Start Process
cd ../
# gunicorn -c conf/gunicorn.conf app:wise_influencer_app
gunicorn -c conf/gunicorn.conf app:app