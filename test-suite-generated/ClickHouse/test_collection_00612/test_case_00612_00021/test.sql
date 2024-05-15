SELECT a, arrayEnumerateUniqRanked(a) FROM ( SELECT * FROM ( SELECT [[6], [1, 2, 3, 4]] AS a UNION ALL SELECT [[3, 4, 5]] AS a ) ORDER BY a ASC );
