.. _extractor:

Simulation result processing and visualisation
==============================================

The  :class:`pyramses.extractor` provides the necessary methods to analyse the results of a simulation.

Initializing
------------

We can initialize an instance by importing pyramses and invoking the :class:`pyramses.extractor` class of pyramses::

   import pyramses   
   data = pyramses.extractor('data.trj')
   

The available calls to the :class:`pyramses.extractor` class are fully documented in :ref:`code_extractor_doc`. The most important are detailed below.

Full list of functions
----------------------

.. autoclass:: pyramses.extractor
   :members:


.. raw:: html

   <div id="disqus_thread"></div>
   <script>
   var disqus_config = function () {
        this.page.url = 'https://pyramses.paristidou.info/interface/extractor.html';  
        this.page.identifier = 'extractor'; 
   };
   (function() {
        var d = document, s = d.createElement('script');
        s.src = 'https://paristidou.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
   </script>
