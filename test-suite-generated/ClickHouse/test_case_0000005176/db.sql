DROP TABLE IF EXISTS rollup_having;
CREATE TABLE rollup_having (
  a Nullable(String),
  b Nullable(String)
) ENGINE = Memory;
INSERT INTO rollup_having VALUES (NULL, NULL);
INSERT INTO rollup_having VALUES ('a', NULL);
INSERT INTO rollup_having VALUES ('a', 'b');
