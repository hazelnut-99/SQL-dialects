SELECT JSONExtract('{"a" : {"b" : {"c" : 1, "d" : "str"}}}', 'Tuple( a String, b LowCardinality(String), c LowCardinality(String), d LowCardinality(String))');
