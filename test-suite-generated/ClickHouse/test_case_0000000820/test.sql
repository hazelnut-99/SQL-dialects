SELECT any(array(array(0, 1), [number, number])) AS k FROM remote('127.0.0.{1,2}', numbers(10));
