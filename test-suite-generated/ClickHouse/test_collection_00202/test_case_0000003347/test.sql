SELECT CASE WHEN 1 THEN [col2, col3] WHEN 1 THEN [col4, 'bar'] ELSE ['foo', 'bar'] END FROM multi_if_check;
