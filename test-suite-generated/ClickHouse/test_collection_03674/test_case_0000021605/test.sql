SELECT number, toTypeName(s), toString(s) FROM (SELECT number, if(number % 3 = 0, NULL, toFixedString(toString(number), 1)) AS s from numbers(10)) ORDER BY number;
