DROP TABLE IF EXISTS view1_00270;
DROP TABLE IF EXISTS view2_00270;
DROP TABLE IF EXISTS merge_view_00270;
CREATE TABLE merge_view_00270 (number UInt64) ENGINE = Merge(currentDatabase(), '^view');
