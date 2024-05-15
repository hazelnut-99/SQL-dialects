SELECT CASE WHEN 1 THEN toFixedString('foo', 16) WHEN 1 THEN 'bar' ELSE toFixedString(col4, 16) END FROM multi_if_check;
