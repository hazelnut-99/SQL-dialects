SELECT id, MIN(COLUMNS('index[0-9]')) FROM grouped_table GROUP BY all ORDER BY ALL;
