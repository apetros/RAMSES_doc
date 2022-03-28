.. _use_simulator:

Running simulations
===================

Initializing
------------

We can initialize an instance of the simulator by importing pyramses and invoking the :class:`pyramses.sim` class::

   import pyramses
   ram = pyramses.sim()

You can get more information on running simulations in :ref:`examples_simple_simul`. The available calls to the :class:`pyramses.sim`
class are fully documented in :ref:`code_simulator_doc`.

Start, Pause and progress
-------------------------

To run a simulation, we first need to setup a proper test case (see :ref:`use_test_case`). Then we can start the simulation with :class:`pyramses.sim.execSim` ::

   ram.execSim(case) # start and run until the end of the simulation 

If we want to pause the simulation at a particular point, we can use::

   ram.execSim(case, 10.0) # start the simulation and pause at time t=10 seconds

To continue the simulation and pause at a new point, we use :class:`pyramses.sim.contSim`::

   ram.contSim(20.0) # continue simulation until t=20.0 seconds

To simulate until the end::

   ram.contSim(ram.getInfTime()) # simulate until the end (time horizon was reached or an early stop happened due to system violations or collapse)


End simulation
--------------

To end the simulation without simulating to the end of the time horizon, we can use :class:`pyramses.sim.endSim`::

   ram.endSim() # end simulation and exit

.. _code_simulator_doc:

Full list of functions
----------------------

.. autoclass:: pyramses.sim
   :members:
   
.. raw:: html

   <div id="disqus_thread"></div>
   <script>
   var disqus_config = function () {
        this.page.url = 'https://pyramses.paristidou.info/interface/simul.html';  
        this.page.identifier = 'simul'; 
   };
   (function() {
        var d = document, s = d.createElement('script');
        s.src = 'https://paristidou.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
   </script>
