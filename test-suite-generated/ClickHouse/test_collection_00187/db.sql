DROP TABLE IF EXISTS polygons;
create table polygons ( id Int32, poly Array(Tuple(Int32, Int32))) engine = Log();
INSERT INTO polygons VALUES (1, [(0, 0), (10, 0), (10, 10), (0, 10)]);
INSERT INTO polygons VALUES (2, [(-5, -5), (5, -5), (5, 5), (-5, 5)]);
DROP TABLE polygons;
