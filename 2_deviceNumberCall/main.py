import ctypes
import numpy as np

# device number as argument
def call_openfiles(readDN, writeDN):
    f = np.ctypeslib.load_library("libfort.so", ".")
    f.openfiles_.argtypes = [
        ctypes.c_int32,
        ctypes.c_int32
        ]
    f.openfiles_.restype  = ctypes.c_void_p

    f.openfiles_(readDN, writeDN)

# non argument
def call_fortran():
    f = np.ctypeslib.load_library("libfort.so", ".")
    f.main_.restype  = ctypes.c_void_p

    f.main_()

readDN  = 10
writeDN = 11
print("**call fortran from python with device number as argument")
call_openfiles(readDN, writeDN)

# print("**call fortran from python with non argument")
# call_fortran()