SELECT CASE WHEN 1 THEN [col2, 'bar'] WHEN 1 THEN [col4, col5] ELSE ['foo', col7] END FROM multi_if_check;
