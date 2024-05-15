SELECT count()
FROM foo ANY INNER JOIN bar USING (dimension_1)
WHERE (foo.server_date <= '2020-11-07') AND (toDate(foo.server_time, 'Asia/Yekaterinburg') <= '2020-11-07');
