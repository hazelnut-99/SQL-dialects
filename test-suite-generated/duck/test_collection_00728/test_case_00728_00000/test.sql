SELECT * FROM (VALUES ((SELECT MIN(a) FROM test), 2, 3), ((SELECT MAX(b) FROM test), 2, 3)) v1;
