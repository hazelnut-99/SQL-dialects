SELECT count() FROM test_table_nullable WHERE dictGet('test_dictionary_load_factor_nullable', 'value', key) != value;
