SELECT round(quantileDD(0.01, 0.69)(number), 2)
FROM
(
    SELECT arrayJoin([toFloat32(number), number - 1.1754944e-38, toFloat32(number + 1.1754944e-38)]) AS number
    FROM numbers(0, 10)
);
