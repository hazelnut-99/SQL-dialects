SELECT minMerge(x) FROM (SELECT minState(a) + minState(b) as x FROM add_aggregate);
