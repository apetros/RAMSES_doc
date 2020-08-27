.. _index:
   
Getting started
===============

Welcome to PyRAMSES documentation! PyRAMSES (Python-based RApid Multithreaded Simulation of Electric power Systems) is a time-domain, dynamic, simulator for future electric power systems. If you are interested in the inner workings of the simulator, head at the end of this page to find some papers explaining the algorithms.

This website is for the Python version of RAMSES, named PyRAMSES. If you are looking for the Java version, then please head to `Java GUI interface <http://www.montefiore.ulg.ac.be/~vct/software.html>`_.

.. _start_installing_pyramses:

Recommended installation
========================

The recommended way to install PyRAMSES is through the Conda tool. So, first head to  `Anaconda <https://www.anaconda.com/download/>`_ and install Python 3 version for your computer.

.. raw:: html

  <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/version.svg" /> </a> <a href="https://anaconda.org/apetros/pyramses"> <img src="https://anaconda.org/apetros/pyramses/badges/platforms.svg" /> </a>
  
We suggest you install PyRAMSES in a `virtual environment 
<https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html>`_ to avoid conflicts with other packages.

To install the latest version in a new virtual environment, run::

  conda create --name ramenv python=3.7 matplotlib scipy numpy mkl jupyter ipython
  conda activate ramenv
  conda install pyramses -c apetros
  
Alternative installation
========================

If you cannot use Conda for some reason, you can install PyRAMSES through pypi::

  pip install matplotlib scipy numpy mkl jupyter ipython pyramses


MKL dependencies
================

The simulator depends on the Intel redistributable libraries for the MKL Lapack/BLAS and the openmp implementation. These should be automatically installed as dependencies when you install PyRAMSES with Conda.

To make sure that you have the MKL libraries installed, you can use::

   import numpy as np
   np.__config__.show()

which should give something like::

  blas_mkl_info:
    libraries = ['mkl_rt']
    library_dirs = ['C:/Users/eenpar/AppData/Local/Continuum/anaconda3\\Library\\lib']
    define_macros = [('SCIPY_MKL_H', None), ('HAVE_CBLAS', None)]
    include_dirs = ['C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl', 'C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl\\include', 'C:\\Program Files (x86)\\IntelSWTools\\compilers_and_libraries_2016.4.246\\windows\\mkl\\lib', 'C:/Users/eenpar/AppData/Local/Continuum/anaconda3\\Library\\include']


.. _start_installing_gnuplot:

Installing Gnuplot (optional)
============================ 

PyRAMSES has the ability to display in real-time (i.e., during the simulation) some outputs. This is useful especially in slow simulations to see that something is actually happening (check :ref:`runtime_obs_example`). For this, gnuplot should be installed and available in the path. You can install gnuplot from `the official website <http://www.gnuplot.info/>`_.

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

.. bibliography:: refs.bib
   :all:

.. raw:: html

   <div id="disqus_thread"></div>
   <script>
   var disqus_config = function () {
        this.page.url = 'https://pyramses.paristidou.info/';  
        this.page.identifier = 'index'; 
   };
   (function() {
        var d = document, s = d.createElement('script');
        s.src = 'https://paristidou.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
   </script>