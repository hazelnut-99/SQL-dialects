SELECT id,
    CASE id
         WHEN 1 THEN 'Z'
    END x
FROM  (SELECT 1 as id);
