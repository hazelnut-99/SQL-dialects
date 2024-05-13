SELECT arrayMap((x -> concat(concat(toString(x), '_'), toString(id))) as lambda, [1,2,3]) FROM test_table;
