SELECT dictGetOrDefault('range_hashed_dictionary', 'val', id, toDate('2023-01-02'), intDiv(NULL, id))
FROM range_dictionary_source_table;
