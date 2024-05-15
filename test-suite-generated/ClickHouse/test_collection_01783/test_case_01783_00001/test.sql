SELECT 1025 == count(n) FROM foo AS t1 ANY LEFT JOIN foo_lc AS t2 ON t1.n == t2.n;
