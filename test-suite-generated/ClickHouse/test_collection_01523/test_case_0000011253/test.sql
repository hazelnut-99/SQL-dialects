select count(), sum(n) from merge(currentDatabase(), 'src_table') where n % 2 = 0 and _table in tmp;
