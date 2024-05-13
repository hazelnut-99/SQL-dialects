SELECT arrayMap((x -> toString(x)) as lambda, [1,2,3]), arrayMap(lambda, ['1','2','3']);
