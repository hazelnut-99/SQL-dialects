DROP TABLE IF EXISTS t1;
DROP TABLE IF EXISTS t2;
CREATE TABLE t1 (
    time DateTime,
    foo String,
    dimension_1 String,
    dt Date MATERIALIZED toDate(time),
    dt1 Date MATERIALIZED toDayOfYear(time),
    aliascol1 ALIAS foo || dimension_1,
    time_alias DateTime ALIAS time
) ENGINE = MergeTree() PARTITION BY toYYYYMM(dt) ORDER BY (dt, foo);
CREATE TABLE t2 (
    time DateTime,
    bar String,
    dimension_2 String,
    dt Date MATERIALIZED toDate(time),
    dt2 Date MATERIALIZED toDayOfYear(time),
    aliascol2 ALIAS bar || dimension_2,
    time_alias DateTime ALIAS time
) ENGINE = MergeTree() PARTITION BY toYYYYMM(dt) ORDER BY (dt, bar);
INSERT INTO t1 VALUES ('2020-01-01 12:00:00', 'fact1', 't1_val1'), ('2020-02-02 13:00:00', 'fact2', 't1_val2'), ('2020-01-01 13:00:00', 'fact3', 't1_val3');
INSERT INTO t2 VALUES ('2020-01-01 12:00:00', 'fact1', 't2_val2'), ('2020-02-05 13:00:00', 'fact2', 't1_val2'), ('2019-01-01 12:00:00', 'fact4', 't2_val2');
