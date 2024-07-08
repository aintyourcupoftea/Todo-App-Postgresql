#!/usr/bin/env bash

export PATH="/usr/local/bin:$PATH"
source ~/.bash_profile

# build_files.sh
echo "Installing Stuff...."
python3 -m pip install -r requirements.txt

# make migrations
python3.9 manage.py migrate 
python3.9 manage.py collectstatic


