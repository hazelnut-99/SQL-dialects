WITH toInt64(2) AS new_x SELECT new_x AS x FROM (SELECT 1 AS x) t;
WITH toInt64(2) AS new_x SELECT * replace(new_x as x)  FROM (SELECT 1 AS x) t;
