SELECT dictGetOrDefault('hashed_dictionary', 'v2', id+1, intDiv(NULL, id))
FROM dictionary_source_table;
