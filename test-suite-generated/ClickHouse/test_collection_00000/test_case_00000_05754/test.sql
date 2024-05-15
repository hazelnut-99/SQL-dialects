SELECT
    length(haystack), length(matches), arrayMap((x) -> length(x), matches)
FROM (
    SELECT
        repeat('abcdefghijklmnopqrstuvwxyz', number * 10) AS haystack,
        extractGroups(haystack, repeat('(\\w)', 100)) AS matches
    FROM numbers(3)
);
