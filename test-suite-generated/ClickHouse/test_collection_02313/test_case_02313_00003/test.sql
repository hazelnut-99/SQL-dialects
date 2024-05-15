SELECT * FROM lc_table INNER JOIN lc_table AS lc_table2
ON (CAST(lc_table.col AS String) = CAST(lc_table2.col AS String)) OR (CAST(lc_table.col AS String) = CAST(lc_table2.col AS String));
