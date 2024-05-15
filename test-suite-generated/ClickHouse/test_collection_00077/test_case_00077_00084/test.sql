SELECT CASE WHEN (col1 % 2) = 0 THEN toFixedString('foo', 16) WHEN 1 THEN toFixedString(col3, 16) ELSE col4 END FROM multi_if_check;
