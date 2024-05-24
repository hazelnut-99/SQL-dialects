select parseDateTime('2021-01-04+23:00:00.654321', '%Y-%m-%d+%H:%i:%s.%f', 'UTC') = toDateTime('2021-01-04 23:00:00', 'UTC');
