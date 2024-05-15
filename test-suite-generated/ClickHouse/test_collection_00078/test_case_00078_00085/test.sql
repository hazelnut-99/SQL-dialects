SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', col3] WHEN 1 THEN [col4, 'bar'] ELSE [col6, 'bar'] END FROM multi_if_check;
