select IPv6NumToString(toFixedString(unhex(materialize('20010DB800000003000001FF0000002E')), 16)) == materialize('2001:db8:0:3:0:1ff:0:2e');
