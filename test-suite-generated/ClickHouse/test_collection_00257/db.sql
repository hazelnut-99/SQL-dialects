drop table IF EXISTS joinbug;
drop table IF EXISTS joinbug_join;
CREATE TABLE joinbug_join (
  id UInt64,
  id2 UInt64,
  val UInt64,
  val2 Int32,
  created UInt64
) ENGINE = Join(SEMI, LEFT, id2);
