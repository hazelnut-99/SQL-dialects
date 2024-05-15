SELECT a, arrayEnumerateUniqRanked(a) FROM ( SELECT * FROM ( SELECT [[],[1],[]] AS a UNION ALL SELECT [[1]] AS a ) ORDER BY a ASC );
