DROP TABLE IF EXISTS t1_00848;
DROP TABLE IF EXISTS t2_00848;
DROP TABLE IF EXISTS t3_00848;
CREATE TABLE t1_00848 ( id String ) ENGINE = Memory;
CREATE TABLE t2_00848 ( id Nullable(String) ) ENGINE = Memory;
CREATE TABLE t3_00848 ( id Nullable(String), not_id Nullable(String) ) ENGINE = Memory;
insert into t1_00848 values ('l');
insert into t3_00848 (id) values ('r');
