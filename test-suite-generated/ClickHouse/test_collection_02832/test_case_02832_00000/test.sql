SELECT
    'serialized state is not used', sequenceMatch('(?1)(?2)')(time, number_ = 1, number_ = 0) AS seq
FROM
(
    SELECT
        number AS time,
        number % 2 AS number_
    FROM numbers_mt(100)
);
