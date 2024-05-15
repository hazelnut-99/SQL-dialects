SELECT CASE WHEN (col1 % 2) = 0 THEN ['foo', 'bar'] WHEN (col1 % 3) = 0 THEN ['foo', 'bar'] ELSE [col6, 'bar'] END FROM multi_if_check;
