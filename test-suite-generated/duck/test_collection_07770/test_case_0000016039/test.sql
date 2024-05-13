SELECT lag(ten, four, 0) OVER (PARTITION BY four ORDER BY ten) lt FROM tenk1 order by four, ten, lt;
