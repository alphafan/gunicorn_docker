#!/usr/bin/env bash

cd ../
export FLASK_APP=app.py
# export FLASK_DEBUG=FALSE
flask run --port=5000 --host=0.0.0.0