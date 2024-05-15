DROP TABLE IF EXISTS 02713_seqt;
DROP TABLE IF EXISTS 02713_seqt_distr;
CREATE TABLE 02713_seqt
ENGINE = MergeTree
ORDER BY n AS
SELECT
    sequenceMatchState('(?1)(?2)')(time, number_ = 1, number_ = 0) AS seq,
    1 AS n
FROM
(
    SELECT
        number AS time,
        number % 2 AS number_
    FROM numbers_mt(100)
);
