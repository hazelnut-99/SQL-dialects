SELECT * FROM (VALUES (3, [1, 2, 3], 'hi'), (8, [4, 5], 'hi')) t(a, i, k), (SELECT UNNEST(i)) t2(j) ORDER BY 1, 2, 3, 4;
