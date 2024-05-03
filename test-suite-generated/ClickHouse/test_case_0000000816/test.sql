SELECT any(tuple(array(0, 1), tuple(2, 3), [4], (5, 'a'), 6, 'b')) AS k FROM remote('127.0.0.{1,2}', numbers(10));
