SELECT CASE WHEN (col1 % 2) = 0 THEN [col2, col3] WHEN (col1 % 3) = 0 THEN [col4, 'bar'] ELSE ['foo', col7] END FROM multi_if_check;
