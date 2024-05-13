SELECT * FROM tbl WHERE COLUMNS(['col1', 'col2']) >= 2 AND COLUMNS(['col1', 'col3']) < 10 ORDER BY ALL;
