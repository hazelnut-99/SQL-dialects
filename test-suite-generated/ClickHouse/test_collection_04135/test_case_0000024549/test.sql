SELECT count() FROM test_table_complex WHERE dictGet('test_complex_dictionary_load_factor', 'value', (key_1, key_2)) != value;
