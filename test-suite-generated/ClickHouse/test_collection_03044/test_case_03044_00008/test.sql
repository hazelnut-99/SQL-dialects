SELECT * FROM fuzzJSON(02918_json_fuzzer,
    random_seed=6667,
    max_object_size=0,
    max_array_size=0) LIMIT 10;
