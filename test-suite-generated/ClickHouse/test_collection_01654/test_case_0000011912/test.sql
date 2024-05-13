SELECT
    length(haystack), length(matches), arrayReduce('sum', arrayMap((x) -> length(x), matches))
FROM (
    SELECT
        repeat('abcdefghijklmnopqrstuvwxyz', number * 10) AS haystack,
        extractGroups(haystack, '(\\w)') AS matches
    FROM numbers(3)
);
