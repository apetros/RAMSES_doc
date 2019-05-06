.. _index:
   
RAMSES
======

Welcome to RAMSES documentation! RAMSES is time-domain, dynamic, simulator for future electric power systems. RAMSES is only available under Windows and Linux. Unfortunately, other OS are not supported at the moment.

RAMSES provides two main ways of running simulations. The first one is through a `Java GUI interface <http://www.montefiore.ulg.ac.be/~vct/software.html>`_. The second method is through a :ref:`py_inter`.

This website is only considered with the Python extension of RAMSES, named PyRAMSES.

Installing runtime libraries
============================

The simulator depends on the Intel redistributable libraries. You can install the runtime libraries for your system from `Intel <https://software.intel.com/en-us/articles/intelr-composer-redistributable-libraries-by-version>`_.

Alternatively, and the recommended way, is to install `Anaconda Python <https://www.anaconda.com/download/>`_ which comes with MKL library installed. Make sure that Anaconda `is added to the path <https://github.com/mGalarnyk/Installations_Mac_Ubuntu_Windows>`_ so that RAMSES can find the file *mkl_rt.dll* in Windows or *mkl_rt.so* in Linux.

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

.. _start_installing_pyramses:

Installing pyramses
===================

.. raw:: html

  <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/version.svg" /> </a> <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/platforms.svg" /> </a>

Install the latest version with::

  conda install pyramses -c apetros
  
I suggest you install it in a `virtual environment 
<https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>`_ to avoid conflicts with other packages.

Alternatively, you can install through pypi::

  pip install matplotlib scipy numpy mkl pyramses


Installing Gnuplot
==================

To display the runtime observables, gnuplot should be installed and available in the path. You can install gnuplot from `the official website <http://www.gnuplot.info/>`_.

Under Linux, you can install with your package manager. For example, under Ubuntu or Debian:

.. code-block:: bash

   sudo apt-get install gnuplot-x11

.. toctree::
   :hidden:
   :maxdepth: 2
   :numbered:
   :caption: Table of Contents

   self
   data/data.rst
   codegen/codegen.rst
   interface/pyramses.rst
   LICENSE.rst 

   

.. rubric:: Suggested References for RAMSES

.. [AVC2015]  P. Aristidou, T. Van Cutsem, "A Parallel Processing Approach to Dynamic Simulations of Combined Transmission and Distribution Systems", In International Journal of Electrical Power & Energy Systems, vol. 72, pp. 58-65, 2015.

.. [ALVC2015] P. Aristidou, S. Lebeau, T. Van Cutsem, "Power System Dynamic Simulations using a Parallel Two-level Schur-complement Decomposition", In IEEE Transactions on Power Systems (in press), 2015.

.. [AFVC2014] P. Aristidou, D. Fabozzi, T. Van Cutsem, "A Schur Complement Method for DAE Systems in Power System Dynamic Simulations", Chapter in Domain Decomposition Methods in Science and Engineering XXI, Springer International Publishing, vol. 98, pp. 719-727, 2014.

.. [AFVC2013] P. Aristidou, D. Fabozzi, T. Van Cutsem, "Dynamic Simulation of Large-scale Power Systems Using a Parallel Schur-complement-based Decomposition Method", In IEEE Transactions on Parallel and Distributed Systems, IEEE Computer Society, vol. 25, no. 10, Los Alamitos, CA, USA, pp. 2561-2570, 2013.
