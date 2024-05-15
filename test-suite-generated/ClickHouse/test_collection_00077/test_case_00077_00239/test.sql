SELECT CASE WHEN 1 THEN 'foo' WHEN (col1 % 3) = 0 THEN 'bar' ELSE 'baz' END FROM multi_if_check;
