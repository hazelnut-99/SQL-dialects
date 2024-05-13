SELECT arrayFold( acc,x -> (arrayPushFront(acc.1, x),arrayPushBack(acc.2, x)),  [1, 2, 3, 4], (emptyArrayInt64(), emptyArrayInt64()));
