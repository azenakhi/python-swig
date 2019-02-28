
## Go to swig download page to download linux version swig installation package.
http://www.swig.org/download.html

## Unzip the tar file.
$ tar -xzvf swig-3.0.12.tar.gz

## Specify swig install directory.
$ ./configure --prefix=/Volumes/EnvDev/tools/swig

## Compile and install.
sudo make
sudo make install

## Add SWIG_PATH environment variable, also add it in PATH environment variable.
sudo vim ~/.bash_profile
export SWIG_PATH=/Volumes/EnvDev/tools/swig/bin
export PATH=$SWIG_PATH:$PATH

## Make SWIG_PATH, PATH environment variable settings take effect.
$ source ~/.bash_profile

## Verify swig installation.
$ swig -version
SWIG Version 3.0.12