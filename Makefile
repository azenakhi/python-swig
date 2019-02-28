python=python

all: test_hello

test_hello: test_hello.py _hello.so
	$(python) test_hello.py

_hello.so: setup.py hello_wrap.c hello.h hello.c hello.i
	$(python) setup.py build_ext --inplace

hello.py hello_wrap.c: hello.i
	swig -python -o hello_wrap.c $<

sdist: setup.py hello.py hello_wrap.c
	$(python) setup.py sdist
clean:
	-rm hello.py hello_wrap.c _hello*.so *.pyc MANIFEST
	-rm build/ dist/ __pycache__/ -rf

.PHONY: all test_hello clean sdist