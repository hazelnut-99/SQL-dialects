select [1, 1, 2, 3, 4, 0, 0, 0, 0, 0] = groupArray(position('aaaa', materialize('a'), number)) from numbers(10);
