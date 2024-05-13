SELECT CASE WHEN (col1 % 2) = 0 THEN [col2, 'bar'] WHEN (col1 % 3) = 0 THEN ['foo', 'bar'] ELSE ['foo', 'bar'] END FROM multi_if_check;
