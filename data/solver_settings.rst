Solver settings
===============

The following options change how the solver behaves.

.. function:: $LATENCY aver_time_window latency_early_stop ;

   Parameters for latency [AVC2015]_.

   :param aver_time_window: The averaging window that we compute latency on.
   :type aver_time_window: float (seconds)
   :param latency_early_stop: When all the units get latent, should the simulation stop.
   :type latency_early_stop: binary (0/1 for no/yes)

.. function:: $GP_REFRESH_RATE interval ;

   Modifies the interval at which the runtime observables are shown.

   :param interval: Interval value. Default is 1.
   :type interval: float (seconds)

.. function:: $OBS_BUFFER_SIZE size ;

   The internal memory reserved for the observables. Change this to be less than half of your available RAM.

   :param size: Memory value. Default is 8 GB.
   :type size: float (GB)

.. function:: $OMEGA_REF reference ;

   Defines the reference frame for the system.

   :param reference: 'COI' for centre of inertia or 'SYN' for synchronous reference frame. Default is 'COI'.
   :type reference: str

.. function:: $NEWTON_TOLER nettol blocktol1 blocktol2 ;

   Defines the Newton method convergence tolerance.

   :param nettol: Network tolerance. Default 1e-3.
   :type nettol: float
   :param blocktol1: Injector absolute tolerance. Default 5e-4.
   :type blocktol1: float
   :param blocktol2: Injector relative tolerance. Default 5e-4.
   :type blocktol2: float

.. function:: $S_BASE size ;

   Defines the system base power.

   :param size: Nominal base power. Default is 100 MVA.
   :type size: float (MVA)

.. function:: $NB_THREADS num ;

   Defines number of threads for parallelisation.

   :param num: Number of threads. Should be less than the physical cores of your system. Default is 1.
   :type num: int