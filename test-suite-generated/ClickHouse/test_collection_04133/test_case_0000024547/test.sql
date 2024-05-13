SELECT count() FROM test_table WHERE dictGet('test_dictionary_load_factor', 'value', key) != value;
