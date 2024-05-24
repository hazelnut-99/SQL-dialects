SELECT substringUTF8(materialize('hello, привет'), 1 + number) FROM numbers(16);
