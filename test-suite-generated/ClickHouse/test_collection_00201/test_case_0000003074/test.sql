SELECT CASE WHEN 1 THEN col2 WHEN (col1 % 3) = 0 THEN toFixedString(col3, 16) ELSE toFixedString('baz', 16) END FROM multi_if_check;
