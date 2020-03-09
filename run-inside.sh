#!/bin/bash

# this is meant to be executed inside Kubernetes pod or job
# 

# sleep for 10 sec to let the NVIDIA drivers be installed properly
echo Going to sleep for 10s ...
sleep 10

# create a directory for our tests
mkdir gpu-test
cd gpu-test

# install Python3 module to access NVIDIA GPU and check the status
pip3 install pynvml
wget -q https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-show.py
python3 /workspace/gpu-test/gpu-show.py

echo
echo "  ----  ----  ----  ----"
echo

# get & execute the TensorFlow device check script
wget -q https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-test-3.py
python3 /workspace/gpu-test/gpu-test-3.py

echo
echo "  ----  ----  ----  ----"
echo

# get & execute the TensorFlow device check script
wget -q https://raw.githubusercontent.com/krudisar/gpu-tests/master/gpu-test-4.py
python3 /workspace/gpu-test/gpu-test-4.py

echo
echo "  ----  ----  ----  ----"
echo

# download the ML TensorFlow sample script
wget -q https://raw.githubusercontent.com/krudisar/gpu-tests/master/tf-test-1.py
python3 /workspace/gpu-test/tf-test-1.py

echo
echo "  ----  ----  ----  ----"
echo

# download the ML TensorFlow sample script to ensure that it is running on GPU
# wget -q https://raw.githubusercontent.com/krudisar/gpu-tests/master/tf-test-2.py
# python3 /workspace/gpu-test/tf-test-2.py

echo
echo "  ----  ----  ----  ----"
echo

echo "Finished ..."




