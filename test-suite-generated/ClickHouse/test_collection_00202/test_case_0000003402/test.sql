SELECT CASE WHEN 1 THEN ['foo', col3] WHEN (col1 % 3) = 0 THEN ['foo', 'bar'] ELSE ['foo', col7] END FROM multi_if_check;
