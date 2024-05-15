SELECT four, ten, sum(ten) over (partition by four order by ten) st, last_value(ten) over (partition by four order by ten) lt FROM tenk1d ORDER BY four, ten;
