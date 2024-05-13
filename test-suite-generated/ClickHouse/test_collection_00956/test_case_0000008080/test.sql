SELECT a, arrayEnumerateUniqRanked(a) FROM ( SELECT * FROM ( SELECT [[], [4]] AS a UNION ALL SELECT [[4]] AS a ) ORDER BY a ASC );
