.. _data:

Data and scenario description
=============================

To perform a dynamic simulation, we require the following data:

- :ref:`static_data` or power flow data that define the initial operating point.
- :ref:`dynamic_data` data that are used to initialise and define the dynamic response for the system.
- :ref:`solver_data` that define some of the solver parameters.
- :ref:`disturbances`. This is a file that describes the disturbance we want to analyse (for instance generator tripping, loss of line, etc.).


.. toctree::
   :hidden:
   :maxdepth: 1

   static_data.rst
   dynamic_data.rst
   solver_settings.rst
   disturbances.rst
   test_systems/example_test_systems.rst
   
