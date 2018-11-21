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

Start, Pause and progress
-------------------------

To run a simulation, we first need to setup a proper test case (see :ref:`_use_test_case`). Then we can start the simulation with::

   ram.execSim(case) # start and run until the end of the simulation

If we want to pause the simulation at a particular point, we can use::

   ram.execSim(case, 10.0) # start the simulation and pause at time t=10 seconds

To continue the simulaion and pause at a new point, we use::

   ram.contSim(20.0) # continue simulation until t=20.0 seconds

To simulate until the end::

   ram.contSim(ram.getInfTime()) # simulate until the end (time horizon was reached or an early stop happened due to system violations or collapse)


End simulation
--------------

To end the simulation without simulating to the end of the time horizon, we can use:

   ram.endSim() # end simulation and exit

