SELECT foo, arr, u1, u2 FROM with_array,
(SELECT UNNEST(with_array.arr) AS u1,
UNNEST(generate_series(1, len(with_array.arr), 1)) AS u2)
ORDER BY foo, u2;
