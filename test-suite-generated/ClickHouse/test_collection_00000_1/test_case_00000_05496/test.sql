SELECT sum(s) FROM (SELECT sum(number) as s FROM remote('127.0.0.1', numbers(5)) with totals);
