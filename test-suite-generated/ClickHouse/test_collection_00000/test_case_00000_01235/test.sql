select [1, 1, 2, 3, 4, 5, 0, 0, 0, 0] = groupArray(position('aaaa', materialize(''), number)) from numbers(10);
