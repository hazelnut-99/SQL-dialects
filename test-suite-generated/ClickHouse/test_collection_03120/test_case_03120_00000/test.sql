SELECT *
FROM tab
PREWHERE indexHint(indexHint(-1, 0.))
WHERE has(foo, 'b');
