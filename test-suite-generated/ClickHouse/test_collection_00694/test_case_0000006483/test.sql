SELECT countMerge(x + y) FROM (SELECT countState(a) as x, countState(b) as y from add_aggregate);
