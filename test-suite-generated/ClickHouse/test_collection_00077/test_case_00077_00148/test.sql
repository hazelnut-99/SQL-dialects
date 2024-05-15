SELECT CASE WHEN 1 THEN col2 WHEN 1 THEN toFixedString(col3, 16) ELSE col4 END FROM multi_if_check;
