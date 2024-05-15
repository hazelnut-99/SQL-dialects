SELECT CASE WHEN (col1 % 2) = 0 THEN col2 WHEN 1 THEN 'bar' ELSE toFixedString('baz', 16) END FROM multi_if_check;
