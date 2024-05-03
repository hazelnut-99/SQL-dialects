SELECT dictGetOrDefault('ip_dictionary', 'cca2', toIPv4('202.79.32.10'), intDiv(0, id))
FROM ip_dictionary_source_table;
