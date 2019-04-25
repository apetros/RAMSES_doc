.. _start:

***************
Getting started
***************

.. _start_installing-Anaconda:

Installing Anaconda
===================

Although *pyramses* can work with various Python versions, it has been developed and tested with Anaconda3. This is convenient since it is bundled with Intel MKL, so there is no need to install the libraries separately.

To make sure that you have the MKL libraries installed, you can use::

   import numpy as np
   np.__config__.show()

which should give something like::

  blas_mkl_info:
    libraries = ['mkl_rt']
    library_dirs = ['C:/Users/eenpar/AppData/Local/Continuum/anaconda3\\Library\\lib']
    define_macros = [('SCIPY_MKL_H', None), ('HAVE_CBLAS', None)]
    include_dirs = ['C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl', 'C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl\\include', 'C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl\\lib', 'C:/Users/eenpar/AppData/Local/Continuum/anaconda3\\Library\\include']

.. _start_installing-PyRAMSES:

Installing PyRAMSES
===================

.. raw:: html

  <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/version.svg" /> </a> <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/platforms.svg" /> </a>

Install the latest version with::

  conda install pyramses -c apetros
  
I suggest you install it in a `virtual environment 
<https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>`_ to avoid conflicts with other packages.

.. disqus::

