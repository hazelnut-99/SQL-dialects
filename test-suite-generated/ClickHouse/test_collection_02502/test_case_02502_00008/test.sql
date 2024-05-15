SELECT * FROM ( SELECT 'a' AS key ) AS t1
INNER JOIN ( SELECT 'a' AS key ) AS t2
ON t1.key = t2.key
;
