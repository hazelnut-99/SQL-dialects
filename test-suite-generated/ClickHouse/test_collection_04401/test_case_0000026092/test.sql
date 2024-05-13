SELECT round(quantileDD(0.01, 0.5)(number), 2)
FROM
(
    SELECT arrayJoin([toInt64(number), number - 10]) AS number
    FROM numbers(0, 10)
);
