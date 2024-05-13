SELECT arraySort(groupUniqArrayMerge(x + y)) FROM (SELECT groupUniqArrayState(a) AS x, groupUniqArrayState(b) as y FROM add_aggregate);
