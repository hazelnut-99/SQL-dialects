select parseDateTime('10:04:11 03-07-2019.242424', '%s:%i:%H %d-%m-%Y.%f', 'UTC') = toDateTime('2019-07-03 11:04:10', 'UTC');
