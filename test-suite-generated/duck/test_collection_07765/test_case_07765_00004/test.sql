SELECT dense_rank() OVER (PARTITION BY four ORDER BY ten) FROM tenk1 WHERE unique2 < 10 ORDER BY four, ten;
