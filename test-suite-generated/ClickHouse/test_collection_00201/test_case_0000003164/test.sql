SELECT CASE WHEN 1 THEN 'foo' WHEN (col1 % 3) = 0 THEN col3 ELSE col4 END FROM multi_if_check;
