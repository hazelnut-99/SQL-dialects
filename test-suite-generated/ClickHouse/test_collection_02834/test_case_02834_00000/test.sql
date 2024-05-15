SELECT
    line,
    patterns,
    arrayFold(acc, pat -> position(line, pat), patterns, 0::UInt64)
FROM tab
ORDER BY line;
