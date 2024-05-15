SELECT CASE WHEN (col1 % 2) = 0 THEN [col2, col3] WHEN 1 THEN ['foo', 'bar'] ELSE [col6, 'bar'] END FROM multi_if_check;
