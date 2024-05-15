SELECT substringUTF8(materialize('hello, привет'), number + 1, number) FROM numbers(16);
