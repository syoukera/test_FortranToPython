import ctypes
import numpy as np
def call_fortran():
    f = np.ctypeslib.load_library("libfort.so", ".")
    # f.rwnumbers_.argtypes = ctypes.c_void_p
    f.rwnumbers_.restype  = ctypes.c_void_p

    f.rwnumbers_()

print("**call fortran from python")
call_fortran()