SELECT lag(ten, four) OVER (PARTITION BY four ORDER BY ten) lt FROM tenk1 order by four, ten, lt;
