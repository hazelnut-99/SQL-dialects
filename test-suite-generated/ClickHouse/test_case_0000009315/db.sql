DROP TABLE IF EXISTS geo;
CREATE TABLE geo (p Tuple(Float64, Float64), s String, id Int) engine=Memory();
INSERT INTO geo VALUES ((0., 0.), 'b', 1);
INSERT INTO geo VALUES ((1., 0.), 'c', 2);
INSERT INTO geo VALUES ((2., 0.), 'd', 3);
