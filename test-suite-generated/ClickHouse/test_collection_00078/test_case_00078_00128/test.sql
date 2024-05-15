SELECT CASE WHEN 1 THEN [col2, col3] WHEN (col1 % 3) = 0 THEN [col4, col5] ELSE [col6, col7] END FROM multi_if_check;
