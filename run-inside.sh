#!/bin/bash

# this is meant to be executed inside Kubernetes pod or job
# 

# sleep for 10 sec to let the NVIDIA drivers be installed properly 
sleep 10

# install Python3 module to access NVIDIA GPU and check the status
pip3 install pynvml
wget https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-show.py

echo
echo
echo

# get & execute the TensorFlow device check script
https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-test-1.py
python3 tf-test.py

echo
echo
echo

# download the ML TensorFlow sample script
wget https://raw.githubusercontent.com/krudisar/gpu-tests/master/tf-test.py
python3 tf-test.py

echo
echo
echo



