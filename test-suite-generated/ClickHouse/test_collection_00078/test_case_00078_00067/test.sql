SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', col3] WHEN (col1 % 3) = 0 THEN [col4, col5] ELSE ['foo', 'bar'] END FROM multi_if_check;
