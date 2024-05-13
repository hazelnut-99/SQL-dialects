SELECT alias(i) AS k, alias(i IN (1)) AS l, alias(i >= 10) AS m, alias(1=0) AS n FROM integers WHERE i=1 ORDER BY 1;
