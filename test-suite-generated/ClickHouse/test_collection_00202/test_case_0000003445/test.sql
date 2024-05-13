SELECT CASE WHEN 1 THEN ['foo', 'bar'] WHEN 1 THEN ['foo', col5] ELSE [col6, 'bar'] END FROM multi_if_check;
