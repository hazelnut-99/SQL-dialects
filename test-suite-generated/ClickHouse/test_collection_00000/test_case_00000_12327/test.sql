select parseDateTime('2019-07-03 11:04:10.975319', '%Y-%m-%d %H:%i:%s.%f', 'UTC') = toDateTime('2019-07-03 11:04:10', 'UTC');
