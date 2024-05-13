SELECT sum(multiIf(number = NULL, 65536, 3))  FROM numbers(3);
