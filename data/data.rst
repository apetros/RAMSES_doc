.. _data:

Data and scenario description
=============================

To perform a dynamic simulation, we require the following data:

- `static` or power flow data that define the initial operating point.
- *dynamic* data that are used to initialise and define the dynamic response for the system.
- :ref:`solver` settings that define some of the solver parameters.
- *disturbance* description. This is a file that describes the disturbance we want to analyse (for instance generator tripping, loss of line, etc.).


.. toctree::
   :hidden:
   :maxdepth: 1

   input_data.rst
   solver_settings.rst
   disturbances.rst
   example_test_systems.rst
   
