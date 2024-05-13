SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', 'bar'] WHEN (col1 % 3) = 0 THEN [col4, 'bar'] ELSE [col6, col7] END FROM multi_if_check;
