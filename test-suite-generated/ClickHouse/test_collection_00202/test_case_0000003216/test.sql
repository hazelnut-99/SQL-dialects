SELECT CASE WHEN (col1 % 2) = 0 THEN [col2, col3] WHEN 1 THEN [col4, 'bar'] ELSE [col6, col7] END FROM multi_if_check;
