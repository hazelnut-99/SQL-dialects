DROP DICTIONARY IF EXISTS TestTblDict;
DROP VIEW IF EXISTS TestTbl_view;
DROP TABLE IF EXISTS TestTbl;
CREATE TABLE TestTbl
(
    `id` UInt16,
    `dt` Date,
    `val` String
)
ENGINE = MergeTree
PARTITION BY dt
ORDER BY (id);
CREATE VIEW TestTbl_view
AS
SELECT *
FROM TestTbl
WHERE dt = ( SELECT max(dt) FROM TestTbl );
CREATE DICTIONARY IF NOT EXISTS TestTblDict
(
    `id` UInt16,
    `dt` Date,
    `val` String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(TABLE TestTbl_view DB currentDatabase()))
LIFETIME(1)
LAYOUT(COMPLEX_KEY_HASHED());
insert into TestTbl values(1, '2022-10-20', 'first');
