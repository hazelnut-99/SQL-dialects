SELECT CASE WHEN 1 THEN col2 WHEN (col1 % 3) = 0 THEN toFixedString('bar', 16) ELSE toFixedString(col4, 16) END FROM multi_if_check;
