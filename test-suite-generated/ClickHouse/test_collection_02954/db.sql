DROP TABLE IF EXISTS 02845_prewhere;
CREATE TABLE  02845_prewhere  ( e String, c String, q String ) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO 02845_prewhere SELECT number, number, number from numbers(10);
