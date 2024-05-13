SELECT
    line,
    splitByNonAlpha(line),
    arrayFold(
        (acc, str) -> position(line, str),
        splitByNonAlpha(line),
        0::UInt64
    )
FROM
    tab;
