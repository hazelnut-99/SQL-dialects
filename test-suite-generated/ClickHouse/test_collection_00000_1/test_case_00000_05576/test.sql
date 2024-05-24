SELECT
    length(haystack), length(matches[1]), length(matches), arrayMap((x) -> length(x), arrayMap(x -> x[1], matches))
FROM (
    SELECT
        repeat('abcdefghijklmnopqrstuvwxyz', number * 10) AS haystack,
        extractAllGroupsVertical(haystack, repeat('(\\w)', 100)) AS matches
    FROM numbers(3)
);
