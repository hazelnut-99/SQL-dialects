SELECT * FROM fuzzJSON(02918_json_fuzzer,
    json_str='{"schedule":[{"breakfast":"7am"}, {"lunch":"12pm"}]}',
    random_seed=123456,
    reuse_output=0,
    max_output_length=128) LIMIT 20;
