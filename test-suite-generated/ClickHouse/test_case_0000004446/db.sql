DROP TABLE IF EXISTS geo;
CREATE TABLE geo (p Tuple(Float64, Float64), id Int) engine=Memory();
INSERT INTO geo VALUES ((0, 0), 1);
INSERT INTO geo VALUES ((1, 0), 2);
INSERT INTO geo VALUES ((2, 0), 3);
