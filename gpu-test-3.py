from numba import jit, cuda 
import numpy as np 
# to measure exec time 
from timeit import default_timer as timer   

# ---- to suppress warnings do this ----
from numba.errors import NumbaDeprecationWarning, NumbaPendingDeprecationWarning
import warnings
warnings.simplefilter('ignore', category=NumbaDeprecationWarning)
warnings.simplefilter('ignore', category=NumbaPendingDeprecationWarning)
warnings.simplefilter('ignore', category=UserWarning)
# --------------------------------------

# normal function to run on cpu 
def func(a):                                 
    for i in range(100000000): 
        a[i]+= 1      
  
# function optimized to run on gpu  - (target="cuda")
@jit                           
def func2(a): 
    for i in range(100000000): 
        a[i]+= 1
if __name__=="__main__": 
    n = 100000000                            
    a = np.ones(n, dtype = np.float64) 
    b = np.ones(n, dtype = np.float32) 
      
    start = timer() 
    func(a) 
    print("without GPU:", timer()-start)     
      
    start = timer() 
    func2(a) 
    print("with GPU:", timer()-start)
    
