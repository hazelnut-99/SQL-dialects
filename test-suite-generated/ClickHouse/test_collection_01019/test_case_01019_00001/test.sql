select count(), sum(n) from merge(currentDatabase(), 'src_table') where _table in ('src_table_2', 'src_table_3');
