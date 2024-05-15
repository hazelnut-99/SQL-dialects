select [1, 1, 2, 3, 4, 5, 0, 0, 0, 0] = groupArray(position(materialize('aaaa'), '', number)) from numbers(10);
