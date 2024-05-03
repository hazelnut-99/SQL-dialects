SELECT number % 2 ? materialize(toDateTime('2000-01-01 00:00:00')) : toDateTime('2001-02-03 04:05:06') FROM numbers(2);
