SELECT arrayMap(i -> [resources_host[i]], arrayEnumerate(resources_host)) FROM test_array;
