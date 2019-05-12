.. _index:
   
PyRAMSES
========

Welcome to PyRAMSES documentation! RAMSES is time-domain, dynamic, simulator for future electric power systems. RAMSES is only available under Windows and Linux.

This website is for with the Python extension of RAMSES, named PyRAMSES. If you are looking for the Java GUI interface, then please head to `Java GUI interface <http://www.montefiore.ulg.ac.be/~vct/software.html>`_.


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