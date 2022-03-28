.. _use_test_case:

Building a scenario and loading data
====================================

A description of the simulation needs to be provided to the simulator.

Initializing
------------

We can initialize an instance of the test-case decriptor by importing pyramses and invoking the :class:`pyramses.cfg` class of pyramses::

   import pyramses   
   case = pyramses.cfg()

The available calls to the :class:`pyramses.cfg` class are fully documented in :ref:`code_cases_doc`. The most important
are detailed below.

Loading and saving test-case to configuration file
--------------------------------------------------
   
If a previously saved configuration file exists, it can be used to initialize the descriptor::

   import pyramses   
   case = pyramses.cfg("cmd.txt") # where cmd.txt is the file with the test-case description

Similarly, a test-case can be saved into a configuration file::

   case.writeCmdFile('cmd.txt') # where cmd.txt is the file with the test-case description
   
Many files can be loaded as follows::

   import pyramses
   list_of_cases = []
   for i in range(12):
      list_of_cases.append(pyramses.cfg('cmd'+str(i)+'.txt')) # loads 12 test-cases from files named 'cmd0.txt', ..., 'cmd11.txt'
      
Or saved::

   for i in range(12):
      list_of_cases[i].writeCmdFile('cmd'+str(i)+'.txt') # saves 12 test-cases to files named 'cmd0.txt', ..., 'cmd11.txt'


Parameters
----------

These are the different parameters that can be defined in the test-case description.

Data files
~~~~~~~~~~

The data files provide a description of the system to be simulated, along with the solver parameters. These files have to be defined
in the :class:`pyramses.cfg` class::

   case.addData('data1.dat')
   case.addData('data2.dat')
   
A data file can be removed::

   case.delData('data1.dat')
   
The list of data can be retrieved::

   case.getData()
   
Or all the data files can be removed::
   
   case.clearData()
   
.. warning:: At least one data file has to be provided, otherwise the simulator will give an exeption.


Initialization file
~~~~~~~~~~~~~~~~~~~

The initialization file is where the simulator will write the initialization procedure output::

   case.addInit('init.trace')

.. note:: This is optional. It can remain empty and the simulator will skip this step.

Disturbance file
~~~~~~~~~~~~~~~~

The disturbance file is where the disturbance to be simulated is described::

   case.addDst('events.dst')

The disturbance file name can be retrieved::

   case.getDst()
   
Or can be cleared::

   case.clearDst()

.. warning:: A disturbance file has to be provided, otherwise the simulator will give an exception.   

Continuous trace file
~~~~~~~~~~~~~~~~~~~~~

The continuous trace file saves information about the convergence of the solution algorithm
used inside RAMSES. This is mainly used for debugging reasons and it can slow down the execution
of the simulation::

   case.addCont('cont.trace')

.. note:: This is optional. It can remain empty and the simulator will skip this step.

Discrete trace file
~~~~~~~~~~~~~~~~~~~

The discrete trace file saves information about the discrete events in the system, these may be
from the discrete controllers, events in the disturbance file, or from discrete variables inside
the injector, twoport, torque, or exciter models. It's defined as::

   case.addDisc('disc.trace')

.. note:: This is optional. It can remain empty and the simulator will skip this step.


.. _runtime_obs_example:

Runtime observables
~~~~~~~~~~~~~~~~~~~

This defines some states that will be displayed during the simulation using gnuplot. The
available commands are:

- BV BUSNAME: Voltage magnitude of bus::
   
   case.addRunObs('BV 1041')

- MS SYNHRONOUS_MACHINE: Synchronous speed of machine::

   case.addRunObs('MS g1')
   
- RT RT: Real-time vs simulated time plot::

   case.addRunObs('RT RT')
   
- BPE/BQE/BPO/BQO BRANCH_NAME: Branch active (P), reactive (Q) power at the origin (O) or extremity (E) of a branch::

   case.addRunObs('BPE 1041-01') # active power at the origin of branch 1041-01
   
- ON INJECTOR_NAME OBSERVABLE_NAME: Monitor a named observable from an injector ::

   case.addRunObs('ON WT1a Pw') # observable Pw from injector WT1a

.. warning:: Gnuplot should be installed and the executable in the OS Path. Please see :ref:`start_installing_gnuplot`.

.. _code_cases_doc:

Full list of functions
----------------------

.. autoclass:: pyramses.cfg
   :members:

.. raw:: html

   <div id="disqus_thread"></div>
   <script>
   var disqus_config = function () {
        this.page.url = 'https://pyramses.paristidou.info/interface/case.html';  
        this.page.identifier = 'case'; 
   };
   (function() {
        var d = document, s = d.createElement('script');
        s.src = 'https://paristidou.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
   </script>


