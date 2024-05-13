SELECT * FROM (SELECT number AS k FROM numbers(100)) s1 JOIN dict_flat d ON k = key ORDER BY k;
