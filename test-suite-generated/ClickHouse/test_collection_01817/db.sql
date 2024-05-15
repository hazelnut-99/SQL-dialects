DROP TABLE IF EXISTS db;
CREATE TABLE tb
(
    date Date,
    `index` Int32,
    value Int32,
    idx Int32 ALIAS `index`
)
ENGINE = MergeTree
PARTITION BY date
ORDER BY (date, `index`);
insert into tb values ('2017-12-15', 1, 1);
