SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', 'bar'] WHEN 1 THEN ['foo', col5] ELSE ['foo', 'bar'] END FROM multi_if_check;
