CREATE TABLE raw
(
  name String,
  num String
) ENGINE = MergeTree
ORDER BY (name);
CREATE TABLE parsed_eph
(
  name String,
  num_ephemeral UInt32 EPHEMERAL,
  num UInt32 MATERIALIZED num_ephemeral,
) ENGINE = MergeTree
ORDER BY (name);
CREATE MATERIALIZED VIEW parse_mv_eph
TO parsed_eph
AS
SELECT
  name,
  toUInt32(num) as num_ephemeral
FROM raw;
INSERT INTO raw VALUES ('3', '3'), ('42', '42');
