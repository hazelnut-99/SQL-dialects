SELECT first_value(ten) OVER (PARTITION BY four ORDER BY ten) FROM tenk1 WHERE unique2 < 10 order by four, ten;
