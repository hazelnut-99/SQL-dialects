SELECT arrayReduce('groupUniqArrayMergeIf',
	[arrayReduce('groupUniqArrayState', ['---', '---']), arrayReduce('groupUniqArrayState', ['t1', 't'])],
	[1, 0]
);
