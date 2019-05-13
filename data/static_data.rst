.. _static_data:

Static data
===========

The static data describe the topology of the network and an initial power flow solution from which the dynamic models are initialised. The static data are the parameters related to the buses, lines, and transformers of the system. The initial operating point is defined by the voltage magnitude and phase on each node.

Data used by RAMSES
-------------------


.. function:: BUS name vnom pload qload bshunt qshunt ;

   Defines a bus in the network.

   :param str name: (max 8 characters) name of the bus
   :param float vnom: base voltage, in kV. VNOM is used to set in per unit the parameters of the lines and transformers incident to the bus
   :param float pload: active power load, en MW
   :param float qload: reactive power load, en Mvar
   :param float bshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant admittance. This is the reactive power produced under a 1 pu voltage. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor)
   :param float qshunt: nominal reactive power, in Mvar, of the shunt compensation treated as constant power in load flow computation. A positive (resp. negative) value corresponds to a capacitor (resp. an inductor).

   .. note::
      Only the name and vnom are considered in RAMSES. The other fields are ignored.
      
.. function:: LINE name from to R X WC2 SNOM BR ;

   The LINE record describes a line, a cable or a series capacitor.
   
   .. image:: line.jpg

   :param str name: (max 20 characters) name of the line
   :param str from: (max 8 characters) name of the "from" bus (the line orientation is arbitrary)
   :param str to: (max 8 characters) name of the "to" bus
   :param float R: resistance R, in :math:`\Omega`
   :param float X: reactance X, in :math:`\Omega`
   :param float WC2: half shunt susceptance  :math:`\omega C/2`, in μS
   :param float SNOM: nominal apparent power, in MVA. This value should be set to zero if one does not want to specify this power; this will be interpreted as an infinite power.
   :param int BR: on/off status of the line breakers. A zero value indicates that the breakers are open at both ends; any other value means that both breakers are closed.
   
.. function:: TRANSFO name from to R X B1 B2 N PHI SNOM BR ;

   Transformer record.
   
   .. image:: trfo.jpg
   
   :param str name: (max 20 characters) name of transformer
   :param str from: (max 8 characters) name of the bus on the "1" side of the ideal transformer
   :param str to: (max 8 characters) name of the bus on the "n" side of the ideal transformer
   :param float R: resistance R, in % on the (VB1, SNOM) base
   :param float X: reactance X, in % on the (VB1, SNOM) base
   :param float B1: susceptance B1, in % on the (VB1, SNOM) base. This is normally a negative value. It can be set to zero to account for the fact that in some phase-shifting transformers, n varies with the phase angle shift φ
   :param float B2: susceptance B2, in % on the (VB1, SNOM) base. This is normally a negative value. It can be set to zero
   :param float N: ratio n, in % on the (VB1,VB2) base
   :param float phi: phase angle φ, in degrees
   :param float SNOM: apparent nominal power of the transformer, in MVA. This value must not be zero
   :param int BR: on/off status of the line breakers. A zero value indicates that the breakers are open at both ends; any other value means that both breakers are closed.

.. function:: TRFO name from to con R X B N SNOM NFIRST NLAST NBPOS TOLV VDES BR ;

   The TRFO record is a simplified variant of the TRANSFO and LTC-V records combined. n vary linearly with the tap position while X is constant. B2 and :math:`\phi` are zero.
   
   :param str name: (max 20 characters) name of transformer
   :param str from: (max 8 characters) name of the bus on the "1" side of the ideal transformer
   :param str to: (max 8 characters) name of the bus on the "n" side of the ideal transformer
   :param str con: name of the bus whose voltage is controlled by adjusting the transformer ratio n. This must be one of the two terminal buses of the transformer, otherwise the program stops. An empty or blank string of characters is used to indicate that no voltage is controlled, i.e. the transformer ratio is fixed
   :param float R: resistance R, in % on the (VB1, SNOM) base
   :param float X: reactance X, in % on the (VB1, SNOM) base
   :param float B: susceptance B, in % on the (VB1, SNOM) base. This is normally a negative value. It can be set to zero
   :param float N: ratio n, in % on the (VB1,VB2) base
   :param float SNOM: apparent nominal power of the transformer, in MVA. This value must not be zero
   :param float NFIRST: ratio n, in %, corresponding to the first tap position
   :param float NLAST: ratio n, in %, corresponding to the last tap position
   :param float NBPOS: the number of tap positions
   :param float TOLV: tolerance :math:`\epsilon` (or half deadband) of the voltage control, in per unit
   :param float VDES: the setpoint voltage at the controlled bus, in per unit. As long as the controlled voltage differs from VDES by less than TOLV, the tap position remains unchanged
   :param int BR: on/off status of the line breakers. A zero value indicates that the breakers are open at both ends; any other value means that both breakers are closed.

   ..  note::
       The parameters NFIRST NLAST NBPOS TOLV VDE are ignored in RAMSES. Any LTC type behaviour should be implemented in the dynamic data as a discrete controller.


.. function:: LFRESV name mag phase ;

   A LFRESV record specifies the voltage magnitude and phase angle at a bus.

   :param str name: (max 8 characters) name of the bus
   :param float mag: voltage magnitude, in per unit
   :param float phase: voltage phase angle, in radian.


Data used only for the Power Flow and ignored by RAMSES
-------------------------------------------------------

.. function:: GENER name bus mon p q vimp snom qmin qmax br ;

   In load flow computation, generators are described by GENER records, as follows.

   :param str name: (max 10 characters) name of the generator
   :param str bus: (max 8 characters) name of the bus to which the generator is connected
   :param str mon: (max 8 characters) not used by ARTERE. To be set to CON BUS
   :param str p: active power production, in MW
   :param str q: reactive power production, in Mvar
   :param str vimp: imposed voltage, in per unit. If VIMP is zero, the generator is treated as a PQ bus with the reactive power production set at the Q value. Otherwise, it is treated as a PV bus and the Q field is ignored
   :param str snom: nominal apparent power, in MVA. This parameter must not be zero if one is willing to model the generator in detail (i.e. through a GROUP3 record) in the dynamic simulation
   :param str qmin: lower reactive power limit, in Mvar
   :param str qmax: upper reactive power limit, in Mvar
   :param str br: on/off status of the generator breaker. A zero value indicates that the breaker is open, any other value means that it is closed.





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
