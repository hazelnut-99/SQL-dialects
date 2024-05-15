SELECT last_value(value) OVER (ORDER BY time ASC) FROM test2;
