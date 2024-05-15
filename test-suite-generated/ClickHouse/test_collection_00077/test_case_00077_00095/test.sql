SELECT CASE WHEN (col1 % 2) = 0 THEN toFixedString('foo', 16) WHEN 1 THEN 'bar' ELSE 'baz' END FROM multi_if_check;
