SELECT CASE WHEN 1 THEN toFixedString(col2, 16) WHEN 1 THEN 'bar' ELSE col4 END FROM multi_if_check;
