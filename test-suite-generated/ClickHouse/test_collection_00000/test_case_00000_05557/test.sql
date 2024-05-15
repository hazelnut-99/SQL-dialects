SELECT
    length(haystack), length(matches), length(matches[1]), arrayMap((x) -> length(x), matches[1])
FROM (
    SELECT
           repeat('abcdefghijklmnopqrstuvwxyz', number * 10) AS haystack,
           extractAllGroupsHorizontal(haystack, '(abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz)') AS matches
    FROM numbers(3)
);
