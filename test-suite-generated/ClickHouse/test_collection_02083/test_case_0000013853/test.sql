SELECT formatDateTime(toDateTime('2020-10-15 00:00:00', 'Asia/Istanbul'), '%Y-%m-%dT%R:%SZ', 'UTC') as formatted_iso FROM test_datetime;
