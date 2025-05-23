.. _disturbances:

Disturbance description
=======================

The following options change how a pre-defined scenario is described and used. These should be added to a dst file and loaded to the simulation cases through :class:`pyramses.case.addDst`. For instance::

   import pyramses   
   case = pyramses.cfg()
   case.addDst('short_circ.dst')

If you are looking how to put distrubance description in an interactive manner, please check :class:`pyramses.sim.Disturb`.


.. function:: time CONTINUE SOLVER disc_meth max_h min_h latency upd_over

   Sets the parameters for the simulation. 

   :param time: Time of the event
   :type time: float (seconds)
   :param disc_meth: Discretization method: TR: Trapezoidal, BE: Backward Euler, BD: BDF2
   :type disc_meth: str
   :param max_h: Maximum time-step
   :type max_h: float (seconds)
   :param min_h: Minimum time-step
   :type min_h: float (seconds)
   :param latency: Latency tolerance (default: 0.0). Parameters for latency :cite:`AFC2014ja`.
   :type latency: float (per-unit)
   :param upd_over: Jacobian update override ALL: Update all injectors and network, NET: Update only network, ABL: Update only injectors, IBL: Update all injectors and network, NOT: Do not override
   :type upd_over: str

.. function:: time STOP

   Stops the simulation. It needs to be always the last command in a file.

   :param time: Time of the event
   :type time: float (seconds)

.. function:: time BREAKER BRANCH name_of_line orig_break extrem_break

   Trip a line or transformer.

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_line: Name of line or transformer.
   :type name_of_line: str
   :param orig_break: Trip the origin of the line.
   :type orig_break: binary (0/1 for no/yes)
   :param extrem_break: Trip the extremity of the line.
   :type extrem_break: binary (0/1 for no/yes)

.. function:: time BREAKER SYNC_MACH name_of_synch_mach breaker

   Trip a generator.

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_synch_mach: Name of generator.
   :type name_of_synch_mach: str
   :param breaker: Trip the generator.
   :type breaker: binary (0/1 for no/yes)

.. function:: time BREAKER INJ name_of_inj breaker

   Trip an injector.

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_inj: Name of injector.
   :type name_of_inj: str
   :param breaker: Trip the injector.
   :type breaker: binary (0/1 for no/yes)

.. function:: time FAULT BUS name_of_bus rfault xfault

   Apply 3-phase short-circuit to bus. Applying a fault to a line requires to create a virtual bus splitting the line and apply the fault on that virtual bus.

   It has to be followed by the command CLEAR BUS (see below).

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_bus: Name of bus.
   :type name_of_bus: str
   :param rfault: Resistance of fault in Ohms. 0 for solid short-circuit.
   :type rfault: float
   :param xfault: Reactance of fault in Ohms. 0 for solid short-circuit.
   :type xfault: float

.. function:: time CLEAR BUS name_of_bus

   Clears 3-phase short-circuit to bus. It has to be followed by the command FAULT BUS (see above).

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_bus: Name of bus.
   :type name_of_bus: str

.. function:: time LFRESV name_of_filename

   Export the power flow solution at a specific point in time.

   :param time: Time of the event
   :type time: float (seconds)
   :param name_of_filename: Name of output file.
   :type name_of_filename: str


