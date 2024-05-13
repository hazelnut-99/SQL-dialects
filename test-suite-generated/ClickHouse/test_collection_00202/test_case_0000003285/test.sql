SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', col3] WHEN 1 THEN ['foo', col5] ELSE [col6, 'bar'] END FROM multi_if_check;
