SELECT arrayMap(x -> (x + 1), groupArray(number) OVER ()) AS result
FROM numbers(10);
