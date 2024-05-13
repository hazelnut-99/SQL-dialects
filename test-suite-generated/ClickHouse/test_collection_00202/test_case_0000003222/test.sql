SELECT CASE WHEN (col1 % 2) = 0 THEN [col2, col3] WHEN 1 THEN ['foo', col5] ELSE ['foo', col7] END FROM multi_if_check;
