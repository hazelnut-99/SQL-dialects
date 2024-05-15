select [1, 1, 2, 3, 4, 0, 0, 0, 0, 0] = groupArray(position(materialize('aaaa'), 'a', number)) from numbers(10);
