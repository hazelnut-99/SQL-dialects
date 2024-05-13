SELECT CASE WHEN (col1 % 2) = 0 THEN toFixedString(col2, 16) WHEN 1 THEN toFixedString('bar', 16) ELSE col4 END FROM multi_if_check;
