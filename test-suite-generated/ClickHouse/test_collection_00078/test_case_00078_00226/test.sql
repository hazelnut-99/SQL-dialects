SELECT CASE WHEN 1 THEN ['foo', 'bar'] WHEN (col1 % 3) = 0 THEN [col4, col5] ELSE ['foo', col7] END FROM multi_if_check;
