SELECT arrayReduce('uniqExactMerge',
    [arrayReduce('uniqExactMergeState',
        [
            arrayReduce('uniqExactState', [12345678901]),
            arrayReduce('uniqExactState', [12345678901])
        ])
    ]);
