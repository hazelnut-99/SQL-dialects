SELECT COUNT(*) FROM integers WHERE i=CAST((SELECT * FROM temp_table) AS tinyint);
