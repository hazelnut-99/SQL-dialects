drop table if exists tbl_repr;
CREATE TABLE tbl_repr(
ts DateTime,
x  String)
ENGINE=MergeTree ORDER BY ts;
