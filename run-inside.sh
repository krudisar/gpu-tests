#!/bin/bash

# this is meant to be executed inside Kubernetes pod or job
# 

# install Python3 module to access NVIDIA GPU and check the status
pip3 install pynvml
wget https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-show.py

# download the ML TensorFlow sample script
wget https://raw.githubusercontent.com/krudisar/gpu-tests/master/tf-test.py
python3 tf-test.py

echo
echo
echo




