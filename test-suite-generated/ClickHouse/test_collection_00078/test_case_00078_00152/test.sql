SELECT CASE WHEN 1 THEN [col2, col3] WHEN 1 THEN ['foo', col5] ELSE [col6, col7] END FROM multi_if_check;
