SELECT * FROM test_bloom_filter_index WHERE (`uint16`, `index_column`) IN (SELECT toUInt16(2), toUInt64(2));
