SELECT CASE WHEN 1 THEN toFixedString(col2, 16) WHEN (col1 % 3) = 0 THEN 'bar' ELSE toFixedString(col4, 16) END FROM multi_if_check;
