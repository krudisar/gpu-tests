#!/bin/bash

# this is meant to be executed inside Kubernetes pod or job
# 

# download the ML TensorFlow sample script
wget https://raw.githubusercontent.com/krudisar/gpu-tests/master/tf-test.py

# install Python3 module to access NVIDIA GPU and check the status
pip3 install pynvml

