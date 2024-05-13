SELECT * FROM (SELECT * FROM t_str WHERE (SELECT any('1970-01-01'))::Date > today());
