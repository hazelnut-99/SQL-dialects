SELECT value_element, value FROM test_table ARRAY JOIN [1048577] AS value_element, arrayMap(x -> value_element, ['']) AS value;
