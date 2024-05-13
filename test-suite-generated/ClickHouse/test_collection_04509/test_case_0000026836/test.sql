SELECT toString(toDateTime('2022-01-01 12:13:14'), materialize(CAST('UTC', 'Nullable(String)')));
