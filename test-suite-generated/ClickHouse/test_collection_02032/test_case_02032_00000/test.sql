select 1 from merge(currentDatabase(), '^data$') where _table in (NULL);
