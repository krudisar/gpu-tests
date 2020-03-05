import torch.cuda
if torch.cuda.is_available():
    print('PyTorch found cuda')
else:
    print('PyTorch could not find cuda')
    
