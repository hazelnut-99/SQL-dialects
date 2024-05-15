SELECT CASE WHEN 1 THEN toFixedString(col2, 16) WHEN (col1 % 3) = 0 THEN toFixedString(col3, 16) ELSE 'baz' END FROM multi_if_check;
