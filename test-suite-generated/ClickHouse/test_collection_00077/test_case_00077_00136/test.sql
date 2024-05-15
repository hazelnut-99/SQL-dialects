SELECT CASE WHEN 1 THEN col2 WHEN (col1 % 3) = 0 THEN toFixedString('bar', 16) ELSE col4 END FROM multi_if_check;
