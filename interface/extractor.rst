.. _extractor:

Simulation result processing and visualisation
==============================================

The  :class:`pyramses.extractor` provides the necessary methods to analyse the results of a simulation.

Initializing
------------

We can initialize an instance by importing pyramses and invoking the :class:`pyramses.extractor` class of pyramses::

   import pyramses   
   data = pyramses.extractor('data.rtrj')
   

The available calls to the :class:`pyramses.extractor` class are fully documented in :ref:`code_extractor_doc`. The most important are detailed below.

.. autofunction:: pyramses.extractor.getBus


