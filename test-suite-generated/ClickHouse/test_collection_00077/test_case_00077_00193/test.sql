SELECT CASE WHEN 1 THEN toFixedString('foo', 16) WHEN (col1 % 3) = 0 THEN col3 ELSE toFixedString(col4, 16) END FROM multi_if_check;
