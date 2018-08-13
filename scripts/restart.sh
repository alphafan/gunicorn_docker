#!/usr/bin/env bash

echo "Checking dependencies with pip..."
pip install -r ../../requirements.txt
bash gunicorn.sh