SELECT round(quantileDD(0.01, 0.5)(number), 2)
FROM
(
    SELECT arrayJoin([toFloat32(number), NaN * number]) AS number
    FROM numbers(0, 10)
);
