SELECT collate_test.s, collate_join_table.s, i FROM collate_test JOIN collate_join_table ON (collate_test.s=collate_join_table.s) ORDER BY i;
