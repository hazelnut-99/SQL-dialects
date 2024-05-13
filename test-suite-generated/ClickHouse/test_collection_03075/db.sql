DROP TABLE IF EXISTS t_tuple_element;
CREATE TABLE t_tuple_element(t1 Tuple(a UInt32, s String), t2 Tuple(UInt32, String)) ENGINE = Memory;
INSERT INTO t_tuple_element VALUES ((1, 'a'), (2, 'b'));
