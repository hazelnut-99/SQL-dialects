SELECT A, toString(B) AS B_str, toString(SUM(C)) AS c_str FROM decimal GROUP BY A, B_str;
