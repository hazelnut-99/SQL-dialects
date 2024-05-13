DROP TABLE IF EXISTS mt_00160;
DROP TABLE IF EXISTS merge_00160;
CREATE TABLE merge_00160 (d Date, x UInt64) ENGINE = Merge(currentDatabase(), '^mt_00160$');
