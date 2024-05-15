SELECT CASE WHEN 1 THEN ['foo', 'bar'] WHEN 1 THEN ['foo', col5] ELSE ['foo', col7] END FROM multi_if_check;
