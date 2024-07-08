#!/bin/bash

python3 -m venv .venv
source .venv/bin/activate

# Install project dependencies
pip install -r requirements.txt

# Apply database migrations (within the virtual environment)
python manage.py migrate

# Collect static files 
python manage.py collectstatic --no-input
