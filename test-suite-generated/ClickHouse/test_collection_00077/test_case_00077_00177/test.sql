SELECT CASE WHEN 1 THEN toFixedString(col2, 16) WHEN 1 THEN col3 ELSE toFixedString(col4, 16) END FROM multi_if_check;
