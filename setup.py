
import os
from distutils.core import setup, Extension

ext_module = Extension('_hello',
                       sources=['hello_wrap.c', 'hello.c'],
                       depends=['hello.h'],
                   )

setup (name = 'swig-hello-world-example',
       version = '0.1',
       description = "swig hello world example",
       ext_modules = [ext_module],
       py_modules = ["hello"],
)