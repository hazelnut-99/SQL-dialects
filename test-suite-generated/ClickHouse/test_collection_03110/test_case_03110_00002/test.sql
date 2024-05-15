SELECT dictGetOrDefault('ip_dictionary', ('asn', 'cca2'), IPv6StringToNum('2a02:6b8:1::1'), 
(intDiv(1, id), intDiv(1, id))) FROM ip_dictionary_source_table;
