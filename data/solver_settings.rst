Solver settings
===============

The following options change how the solver behaves.

.. function:: $LATENCY aver_time_window latency_early_stop ;

   Parameters for latency [AVC2015]_.

   :param aver_time_window: The averaging window that we compute latency on.
   :type aver_time_window: float (seconds)
   :param latency_early_stop: When all the units get latent, should the simulation stop.
   :type latency_early_stop: binary (0/1 for no/yes)
