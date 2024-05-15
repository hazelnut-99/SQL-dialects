SELECT CASE WHEN (col1 % 2) = 0 THEN 'foo' WHEN (col1 % 3) = 0 THEN 'bar' ELSE col4 END FROM multi_if_check;
