SELECT cast(percent_rank() OVER (PARTITION BY four ORDER BY ten)*10 as INTEGER) FROM tenk1 ORDER BY four, ten;
