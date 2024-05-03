SELECT quantiles(0.5, 0.9)(number) FROM remote('127.0.0.{1,2}', numbers(10));
