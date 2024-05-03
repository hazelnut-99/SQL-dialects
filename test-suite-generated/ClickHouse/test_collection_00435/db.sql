DROP TABLE IF EXISTS t;
create table t( s String ) Engine=Memory as select arrayJoin (['a','b','c']);
DROP TABLE t;
DROP TABLE IF EXISTS test_alias;
CREATE TABLE test_alias(`a` Int64, `b` Int64, `c` Int64, `day` Date, `rtime` DateTime) ENGINE = Memory
as select 0, 0, 0, '2022-01-01', 0 from zeros(10);
