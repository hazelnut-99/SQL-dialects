SELECT * FROM (SELECT 1 AS id, (SELECT 1) as subquery) WHERE subquery = 1;
