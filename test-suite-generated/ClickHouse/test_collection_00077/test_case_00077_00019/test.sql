SELECT CASE WHEN (col1 % 2) = 0 THEN col2 WHEN 1 THEN col3 ELSE 'baz' END FROM multi_if_check;
