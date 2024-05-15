SELECT arraySort(groupArrayMerge(x + y)) FROM (SELECT groupArrayState(a) AS x, groupArrayState(b) as y FROM add_aggregate);
