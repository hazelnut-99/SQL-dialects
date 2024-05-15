SELECT cast(cume_dist() OVER (PARTITION BY four ORDER BY ten)*10 as integer) FROM tenk1 WHERE  unique2 < 10 order by four, ten;
