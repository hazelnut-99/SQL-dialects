SELECT CASE WHEN (col1 % 2) = 0 THEN 'foo' WHEN 1 THEN col3 ELSE toFixedString('baz', 16) END FROM multi_if_check;
