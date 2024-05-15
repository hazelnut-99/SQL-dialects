DROP TABLE IF EXISTS fill;
CREATE TABLE fill (date Date, val Int, str String) ENGINE = Memory;
INSERT INTO fill VALUES (toDate('2019-05-24'), 13, 'sd0')(toDate('2019-05-10'), 16, 'vp7')(toDate('2019-05-25'), 17, '0ei')(toDate('2019-05-30'), 18, '3kd')(toDate('2019-05-15'), 27, 'enb')(toDate('2019-06-04'), 5, '6az')(toDate('2019-05-23'), 15, '01v')(toDate('2019-05-08'), 28, 'otf')(toDate('2019-05-19'), 20, 'yfh')(toDate('2019-05-07'), 26, '2ke')(toDate('2019-05-07'), 18, 'prh')(toDate('2019-05-09'), 25, '798')(toDate('2019-05-10'), 1, 'myj')(toDate('2019-05-11'), 18, '3s2')(toDate('2019-05-23'), 29, '72y');
DROP TABLE fill;
CREATE TABLE fill (a UInt32, b Int32) ENGINE = Memory;
INSERT INTO fill VALUES (1, -2), (1, 3), (3, 2), (5, -1), (6, 5), (8, 0);
