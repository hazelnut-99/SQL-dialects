SELECT count() FROM test_table_nullable WHERE dictGet('test_dictionary_10_shards_nullable', 'value', key) != value;
