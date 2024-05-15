SELECT CASE WHEN (col1 % 2) = 0 THEN toFixedString(col2, 16) WHEN 1 THEN 'bar' ELSE 'baz' END FROM multi_if_check;
