DROP TABLE IF EXISTS 02481_mergetree;
DROP TABLE IF EXISTS 02481_merge;
CREATE TABLE 02481_merge(x UInt64, y UInt64, arr Array(String)) ENGINE = Merge(currentDatabase(), '^(02481_mergetree)$');
