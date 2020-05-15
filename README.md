* Travis-CI `linux`and `osx` builds [![Travis Build Status](https://travis-ci.org/omnia-md/conda-recipes-cuda.svg?branch=master)](https://travis-ci.org/omnia-md/conda-recipes-cuda)
* Appveyor-CI `windows` builds [![Build status](https://ci.appveyor.com/api/projects/status/apspu0x7oy0fop5h/branch/master?svg=true)](https://ci.appveyor.com/project/jchodera/conda-recipes-cuda/branch/master)

omnia-md/conda-recipes-cuda
---------------------------

This repository contains recipes for creating the CUDA-enabled conda packages for OpenMM.

### Supported versions

Python packages are built against latest two releases of python and python 2.7.
Packages which have a binary dependency on Numpy are built against the latest
two releases of Numpy.

### Building the packages

The recipes here are automatically built using [Appveyor-CI](http://www.appveyor.com/)
and [Travis-CI](https://travis-ci.org/). For linux, we use a modified
[Conda-forge Linux Anvil](https://github.com/conda-forge/docker-images/tree/master/linux-anvil) to ensure that the
packages are fully compatible across multiple linux distributions and versions.

To build a package yourself, run `conda build <package_name>`, or
`./conda-build-all ./*` to build multiple packages across each of the
supported Python/Numpy configurations.
