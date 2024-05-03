SELECT quantilesDeterministic(0.5, 0.9)(number, number) FROM remote('127.0.0.{1,2}', numbers(10));
