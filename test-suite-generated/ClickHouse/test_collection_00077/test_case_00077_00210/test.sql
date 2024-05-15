SELECT CASE WHEN 1 THEN toFixedString('foo', 16) WHEN 1 THEN col3 ELSE toFixedString('baz', 16) END FROM multi_if_check;
