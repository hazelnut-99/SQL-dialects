SELECT * FROM v1 AS t1
JOIN v1 AS t2 USING (id)
JOIN v2 AS n1 ON t1.id = n1.value
JOIN v2 AS n2 ON t1.id = n2.value;
