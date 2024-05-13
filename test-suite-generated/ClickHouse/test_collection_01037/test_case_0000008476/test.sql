SELECT substringUTF8(materialize('hello, привет'), number + 1, 3) FROM numbers(16);
