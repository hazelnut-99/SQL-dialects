SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', col3] WHEN (col1 % 3) = 0 THEN ['foo', col5] ELSE [col6, col7] END FROM multi_if_check;
