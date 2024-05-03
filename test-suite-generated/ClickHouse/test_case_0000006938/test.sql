SELECT
    d,
    toInt16OrNull(d),
    caseWithExpression(d, 'a', 3, toInt16OrZero(d)) AS case_zero,
    caseWithExpression(d, 'a', 3, toInt16OrNull(d)) AS case_null,
    if(d = 'a', 3, toInt16OrZero(d)) AS if_zero,
    if(d = 'a', 3, toInt16OrNull(d)) AS if_null
FROM
(
    SELECT arrayJoin(['', '1', 'a']) AS d
)
ORDER BY
    case_zero ASC,
    d ASC;
