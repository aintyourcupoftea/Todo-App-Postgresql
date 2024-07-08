#!/bin/bash

python3 -m venv .venv
source .venv/bin/activate

# Install project dependencies
python3 -m pip install -r requirements.txt

# Apply database migrations (within the virtual environment)
python3 manage.py migrate

# Collect static files 
python3 manage.py collectstatic --no-input
