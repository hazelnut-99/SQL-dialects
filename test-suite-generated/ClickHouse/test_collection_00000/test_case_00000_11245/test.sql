SELECT * FROM (SELECT 1 AS id, 1 AS value) AS t1 ASOF LEFT JOIN (SELECT 1 AS id, 1 AS value) AS t2 ON (t1.id = t2.id) AND 1 == 1 AND (t1.value >= t2.value);
