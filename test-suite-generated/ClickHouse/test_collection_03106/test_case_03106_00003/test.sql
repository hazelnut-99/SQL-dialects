SELECT dictGetOrDefault('hashed_array_dictionary', 'v3', id+1, intDiv(NULL, id))
FROM dictionary_source_table;
