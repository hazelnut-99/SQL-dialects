SELECT ignore(number) FROM numbers(256) ORDER BY arrayFilter(x -> materialize(255), materialize([257])) LIMIT 1;
