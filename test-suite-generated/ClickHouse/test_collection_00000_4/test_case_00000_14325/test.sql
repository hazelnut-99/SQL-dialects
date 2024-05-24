SELECT arrayMap(x -> (x.1, arrayMap(x -> (x.1), [(1, 1), (2, 2)])), [(3, 3), (4, 4)]);
