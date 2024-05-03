WITH arrayJoin(['a', 'a', 'b', 'b']) AS field
SELECT
    field,
    count() OVER (PARTITION BY field)
ORDER BY field ASC
LIMIT 1;
