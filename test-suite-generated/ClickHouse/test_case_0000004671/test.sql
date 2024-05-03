WITH map('1', 2, '3', 4) AS m SELECT m[toString(number)] FROM numbers(5);
