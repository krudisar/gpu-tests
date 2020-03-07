# pip install gpuinfo
from gpuinfo import GPUInfo

available_device=GPUInfo.check_empty()
percent,memory=GPUInfo.gpu_usage()
min_percent=percent.index(min([percent[i] for i in available_device]))
min_memory=memory.index(min([memory[i] for i in available_device]))

print(GPUInfo.get_info())

print(".\n.\n.")

print("Available devices: " + available_device + "\n\n\n")
print("CPU Usage: " + percent)
print("Available memory : " + memory)

