SELECT CASE WHEN (col1 % 2) = 0 THEN col2 WHEN (col1 % 3) = 0 THEN 'bar' ELSE 'baz' END FROM multi_if_check;
