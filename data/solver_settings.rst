Solver settings
===============

The following options change how the solver behaves. These should be added to a data file and loaded to the simulation cases through :class:`pyramses.case.addData`. For instance::

   import pyramses   
   case = pyramses.cfg()
   case.addData('settings.rdat')

List of settings
----------------

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

.. function:: $FIN_DIFFER C1 C2 ;

   Defines numerical differentiation step used for the Jacobian calculations.

   :param C1: constant C1 for numerical evaluation of Jacobian (user-defined blocks). Default 1e-5.
   :type C1: float
   :param C2: constant C2 for numerical evaluation of Jacobian. where change in x = max( C1 |x|, C2). Default 1e-5.
   :type C2: float

.. function:: $SPARSE_SOLVER name ;

   Defines the solver used for the sparse system solution.

   :param name: 'ma41' or 'KLU'. Default is 'KLU'.
   :type name: str

.. function:: $SKIP_CONV bool ;

   Defines if the converged blocks are skipped to accelerate the simulation.

   :param bool: T of F. Default is F.
   :type bool: boolean

.. function:: $FULL_UPDATE bool ;

   Defines if the Jacobian matrices will be updated at every iteration.

   :param bool: T of F. Default is F.
   :type bool: boolean