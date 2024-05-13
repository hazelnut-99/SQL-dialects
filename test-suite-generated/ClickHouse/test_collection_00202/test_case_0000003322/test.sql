SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', 'bar'] WHEN 1 THEN ['foo', 'bar'] ELSE ['foo', col7] END FROM multi_if_check;
