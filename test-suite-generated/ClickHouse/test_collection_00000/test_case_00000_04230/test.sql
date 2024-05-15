SELECT substringUTF8(materialize('hello, привет'), -1 - number, 5) FROM numbers(16);
