SELECT CASE WHEN 1 THEN ['foo', col3] WHEN (col1 % 3) = 0 THEN [col4, 'bar'] ELSE [col6, 'bar'] END FROM multi_if_check;
