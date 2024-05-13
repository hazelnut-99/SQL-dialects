SELECT count() FROM test_table WHERE dictGet('test_dictionary_10_shards', 'value', key) != value;
