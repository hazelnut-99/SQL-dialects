DROP TABLE IF EXISTS t64;
CREATE TABLE t64
(
    date16 Date,
    t_date16 Date Codec(T64, ZSTD),
    date_32 Date32,
    t_date32 Date32 Codec(T64, ZSTD)
) ENGINE MergeTree() ORDER BY tuple();
INSERT INTO t64 values ('1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01');
INSERT INTO t64 values ('2149-06-06', '2149-06-06', '2149-06-06', '2149-06-06');
INSERT INTO t64 values ('2149-06-08', '2149-06-08', '2149-06-08', '2149-06-08');
INSERT INTO t64 values ('1950-01-01', '1950-01-01', '1950-01-01', '1950-01-01');
