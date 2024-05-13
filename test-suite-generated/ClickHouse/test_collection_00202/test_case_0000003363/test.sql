SELECT CASE WHEN 1 THEN [col2, 'bar'] WHEN (col1 % 3) = 0 THEN [col4, 'bar'] ELSE ['foo', 'bar'] END FROM multi_if_check;
