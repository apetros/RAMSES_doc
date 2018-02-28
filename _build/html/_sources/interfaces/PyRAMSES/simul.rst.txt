.. _use_simulator:

Simulator
=========

Initializing
------------

We can initialize an instance of the simulator by importing PyRAMSES and invoking the :class:`PyRAMSES.sim` class::

   import PyRAMSES
   ram = PyRAMSES.sim()

We can have several instances of the simulator running at the same time. Each instance has its own memory and can be treated
separately. For example, let's say we want to initialize 12 simulator instances::

   import PyRAMSES
   list_of_ram = []
   for i in range(12):
      list_of_ram.append(PyRAMSES.sim()) # initialize 12 instances of RAMSES

The resulting list has 12 instances of the simulator.

You can get more information on running simulations in :ref:`examples_simple_simul`. The available calls to the :class:`PyRAMSES.sim`
class are fully documented in :ref:`code_simulator_doc`.

Pausing and progressing
-----------------------


End simulation
--------------
