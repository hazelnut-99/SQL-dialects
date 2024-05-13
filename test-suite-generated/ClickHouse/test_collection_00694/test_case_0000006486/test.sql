SELECT uniqMerge(x + y) FROM (SELECT uniqState(a) as x, uniqState(b) as y FROM add_aggregate);
