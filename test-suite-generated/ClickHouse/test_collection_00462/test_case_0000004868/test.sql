SELECT
    -- x1, x2, x3, x4,
    xor(x1, x2, x3, x4) AS xor1,
    xor(xor(x1, x2), xor(x3, x4)) AS xor2,

    or(x1, x2, x3, x4) AS or1,
    or(x1 or x2, x3 or x4) AS or2,

    and(x1, x2, x3, x4) AS and1,
    and(x1 and x2, x3 and x4) AS and2
FROM (
    SELECT
        toUInt8(number % 2) AS x1,
        toUInt8(number / 2 % 2) AS x2,
        toUInt8(number / 4 % 2) AS x3,
        toUInt8(number / 8 % 2) AS x4
    FROM numbers(16)
)
WHERE
    xor1 != xor2 OR (and1 != and2 OR or1 != or2)
;
