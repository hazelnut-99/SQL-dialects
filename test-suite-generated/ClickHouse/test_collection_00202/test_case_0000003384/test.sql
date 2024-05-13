SELECT CASE WHEN 1 THEN [col2, 'bar'] WHEN 1 THEN ['foo', 'bar'] ELSE [col6, col7] END FROM multi_if_check;
