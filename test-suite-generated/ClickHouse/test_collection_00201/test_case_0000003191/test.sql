SELECT CASE WHEN 1 THEN 'foo' WHEN 1 THEN toFixedString('bar', 16) ELSE 'baz' END FROM multi_if_check;
