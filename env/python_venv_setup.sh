#!/bin/bash

# create the virtual enviroment
echo "Installing the system packages, please enter your password"
sudo apt-get install python3-virtualenv
sudo apt-get install python3-numpy

# install the python virtual environment
echo "Installing the Python virtual environment"
python3 -m venv venv
source venv/bin/activate 
pip install wheel
pip install -r requirements.txt
