SELECT dictGetOrDefault('direct_dictionary', ('v1', 'v2'), 0, (intDiv(1, id), intDiv(1, id)))
FROM dictionary_source_table;
