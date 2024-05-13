DROP TABLE IF EXISTS broken_table;
DROP TABLE IF EXISTS broken_view;
CREATE TABLE broken_table
(
    start DateTime64(6),
    end DateTime64(6),
)
ENGINE = ReplacingMergeTree(start)
ORDER BY (start);
CREATE VIEW broken_view as
SELECT
  t.start as start,
  t.end as end,
  cast(datediff('second', t.start, t.end) as float) as total_sec
FROM broken_table t FINAL
UNION ALL
SELECT
  null as start,
  null as end,
  null as total_sec;
