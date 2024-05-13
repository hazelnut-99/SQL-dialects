SELECT CASE WHEN (col1 % 2) = 0 THEN toFixedString('foo', 16) WHEN (col1 % 3) = 0 THEN 'bar' ELSE toFixedString(col4, 16) END FROM multi_if_check;
