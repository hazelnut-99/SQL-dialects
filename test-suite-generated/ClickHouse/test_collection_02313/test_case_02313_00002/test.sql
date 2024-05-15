SELECT * FROM lc_table INNER JOIN lc_table AS lc_table2
ON (lc_table.col = lc_table2.col) OR (lc_table.col = lc_table2.col);
