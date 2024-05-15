DROP TABLE IF EXISTS array;
CREATE TABLE array (arr Array(Nullable(Float64))) ENGINE = Memory;
INSERT INTO array(arr) values ([1,2]),([3,4]),([5,6]),([7,8]);
