SELECT number % 2 ? materialize(toDate('2000-01-01')) : toDate('2001-02-03') FROM numbers(2);
