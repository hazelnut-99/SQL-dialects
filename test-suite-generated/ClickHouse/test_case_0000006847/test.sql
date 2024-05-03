SELECT A, B_str, toString(cc) FROM (SELECT A, toString(B) AS B_str, SUM(C) AS cc FROM decimal GROUP BY A, B_str);
