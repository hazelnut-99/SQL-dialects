SELECT toDateTime(foo.server_time, 'UTC') FROM foo
SEMI JOIN bar USING (dimension_1) WHERE toDate(foo.server_time, 'UTC') <= toDate('2020-04-30');
