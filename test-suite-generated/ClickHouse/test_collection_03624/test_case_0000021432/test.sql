SELECT arrayMap(x -> concat(concat(concat(concat(concat(toString(id), '___\0_______\0____'), toString(id), concat(concat(toString(id), ''), toString(id)), toString(id)),
    arrayMap(x -> concat(concat(concat(concat(toString(id), ''), toString(id)), toString(id), '___\0_______\0____'), toString(id)) AS lambda, [NULL, inf, 1, 1]),
    concat(toString(id), NULL), toString(id)), toString(id))) AS lambda, [NULL, NULL, 2147483647])
FROM test_table WHERE concat(concat(concat(toString(id), '___\0_______\0____'), toString(id)), concat(toString(id), NULL), toString(id));
