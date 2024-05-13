SELECT CASE WHEN 1 THEN toFixedString('foo', 16) WHEN (col1 % 3) = 0 THEN 'bar' ELSE col4 END FROM multi_if_check;
