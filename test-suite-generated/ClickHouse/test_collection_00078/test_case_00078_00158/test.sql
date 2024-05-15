SELECT CASE WHEN 1 THEN [col2, col3] WHEN 1 THEN ['foo', 'bar'] ELSE ['foo', col7] END FROM multi_if_check;
