select count(), sum(n) from merge(currentDatabase(), 'src_table') where _table in tmp;
