SELECT dictGetOrDefault('hashed_dictionary', 'v2', 1, intDiv(1, id))
FROM dictionary_source_table;
