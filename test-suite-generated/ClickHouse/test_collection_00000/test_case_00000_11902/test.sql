SELECT id,
       CASE id
            WHEN 1 THEN 'Z'
            ELSE 'X'
     END x
FROM  (SELECT 1 as id);
