SELECT * FROM fuzzJSON(02918_json_fuzzer, json_str='{"students":[{"name":"Alice"}, {"name":"Bob"}]}', random_seed=1337) LIMIT 20;
