SELECT round(entropy(number), 6) FROM remote('127.0.0.{1,2}', numbers(256));
