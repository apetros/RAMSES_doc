.. _static_data:

Static data
===========

The static data describe the topology of the network and an initial power flow solution from which the dynamic models are initialised. The static data are the parameters related to the buses, lines, and transformers of the system. The initial operating point is defined by the voltage magnitude and phase on each node.

.. function:: BUS name vnom pload qload bshunt qshunt ;

   Defines a bus in the network.

   :param str name: (max 8 characters) name of the bus
   :param float vnom: base voltage, in kV . VNOM is used to set in per unit the parameters of the lines and transformers incident to the bus
   :param float pload: active power load, en MW
   :param float qload: reactive power load, en Mvar
   :param float bshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant admittance. This is the reactive power produced under a 1 pu voltage. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor)
   :param float qshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant power in load flow computation. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor).

   .. note::
      Only the name and vnom are considered in RAMSES. The other fields are ignored.
      
.. function:: LINE name from to R X WC2 SNOM BR ;

   The LINE record describes a line, a cable or a series capacitor

   :param str name: (max 20 characters) name of the line
   :param float vnom: base voltage, in kV . VNOM is used to set in per unit the parameters of the lines and transformers incident to the bus
   :param float pload: active power load, en MW
   :param float qload: reactive power load, en Mvar
   :param float bshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant admittance. This is the reactive power produced under a 1 pu voltage. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor)
   :param float qshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant power in load flow computation. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor).
   
   :param str from: (max 8 characters) name of the "from" bus (the line orientation is arbitrary)
   :param str to: (max 8 characters) name of the "to" bus
   :param float R: resistance R, in Ω
   :param float X: reactance X, in Ω
   :param float WC2: half shunt susceptance ωC/2, in μS
   :param float SNOM: nominal apparent power, in MVA. This value should be set to zero if one does not want to specify this power; this will be interpreted as an infinite power.
   :param binary BR: on/off status of the line breakers. A zero value indicates that the breakers are open at both ends; any other value means that both breakers are closed.

.. raw:: html

   <div id="disqus_thread"></div>
   <script>
   var disqus_config = function () {
        this.page.url = 'https://pyramses.paristidou.info/data/static_data.html';  
        this.page.identifier = 'static_data'; 
   };
   (function() {
        var d = document, s = d.createElement('script');
        s.src = 'https://paristidou.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
   </script>
