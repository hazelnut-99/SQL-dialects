SELECT sumMerge(s) FROM (SELECT sumMergeState(n) s FROM (SELECT sumState(number) n FROM numbers(0)));
