SELECT
    a, b, a = b, a != b, a < b, a > b, a <= b, a >= b,
    toFixedString(a, 16) AS fa, toFixedString(b, 16) AS fb, fa = fb, fa != fb, fa < fb, fa > fb, fa <= fb, fa >= fb
FROM
(
    SELECT 'aaaaaaaaaaaaaaaa' AS a
    UNION ALL SELECT 'aaaaaaaaaaaaaaab'
    UNION ALL SELECT 'aaaaaaaaaaaaaaac'
    UNION ALL SELECT 'baaaaaaaaaaaaaaa'
    UNION ALL SELECT 'baaaaaaaaaaaaaab'
    UNION ALL SELECT 'baaaaaaaaaaaaaac'
    UNION ALL SELECT 'aaaaaaaabaaaaaaa'
    UNION ALL SELECT 'aaaaaaabaaaaaaaa'
    UNION ALL SELECT 'aaaaaaacaaaaaaaa'
) js1
CROSS JOIN
(
    SELECT 'aaaaaaaaaaaaaaaa' AS b
    UNION ALL SELECT 'aaaaaaaaaaaaaaab'
    UNION ALL SELECT 'aaaaaaaaaaaaaaac'
    UNION ALL SELECT 'baaaaaaaaaaaaaaa'
    UNION ALL SELECT 'baaaaaaaaaaaaaab'
    UNION ALL SELECT 'baaaaaaaaaaaaaac'
    UNION ALL SELECT 'aaaaaaaabaaaaaaa'
    UNION ALL SELECT 'aaaaaaabaaaaaaaa'
    UNION ALL SELECT 'aaaaaaacaaaaaaaa'
) js2
ORDER BY a, b;
