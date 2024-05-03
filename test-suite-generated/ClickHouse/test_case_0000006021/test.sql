WITH substring('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, number) AS prefix, prefix || 'y' || prefix AS a, prefix || 'x' AS b SELECT a = b, a < b, a > b, a <= b, a >= b FROM numbers(40);
