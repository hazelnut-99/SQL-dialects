SELECT arrayFold( acc,x -> arrayPushFront(acc, x),  [1, 2, 3, 4], emptyArrayInt64());
