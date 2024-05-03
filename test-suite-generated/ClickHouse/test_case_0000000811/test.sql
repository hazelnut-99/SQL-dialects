SELECT any(array(0)) AS k FROM remote('127.0.0.{1,2}', numbers(10));
