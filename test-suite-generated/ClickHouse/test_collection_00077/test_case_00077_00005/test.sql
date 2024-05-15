SELECT CASE WHEN (col1 % 2) = 0 THEN col2 WHEN (col1 % 3) = 0 THEN toFixedString(col3, 16) ELSE toFixedString(col4, 16) END FROM multi_if_check;
