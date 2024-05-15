SELECT CASE WHEN 1 THEN ['foo', 'bar'] WHEN 1 THEN [col4, 'bar'] ELSE ['foo', 'bar'] END FROM multi_if_check;
