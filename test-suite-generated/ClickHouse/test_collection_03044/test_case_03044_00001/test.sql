SELECT * FROM fuzzJSON(02918_json_fuzzer, json_str='{"ClickHouse":"Is Fast"}', random_seed=1337) LIMIT 20;
