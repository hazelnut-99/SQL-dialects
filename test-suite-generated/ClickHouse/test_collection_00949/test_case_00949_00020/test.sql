SELECT * FROM functional_index_mergetree WHERE NOT or(NOT x, toUInt64(x) AND NOT floor(x) > 6, x >= 7.42 AND round(x) <= 7);
