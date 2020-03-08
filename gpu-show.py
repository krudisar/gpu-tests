'''

	Requirement: 
		- pip3 install pynvml

'''
	
from pynvml import *
nvmlInit()
print("NVIDIA Driver Version:", nvmlSystemGetDriverVersion().decode("utf-8"))

deviceCount = nvmlDeviceGetCount()
for i in range(deviceCount):
	handle = nvmlDeviceGetHandleByIndex(i)
	print("Device", i, ":", nvmlDeviceGetName(handle).decode("utf-8"))
  
