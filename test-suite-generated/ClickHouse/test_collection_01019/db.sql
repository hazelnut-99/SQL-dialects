DROP TABLE IF EXISTS A;
DROP TABLE IF EXISTS B;
CREATE TABLE A(k UInt32, t DateTime, a Float64) ENGINE = MergeTree() ORDER BY (k, t);
CREATE TABLE B(k UInt32, t DateTime, b Float64) ENGINE = MergeTree() ORDER BY (k, t);
INSERT INTO B(k,t,b) VALUES (1,2,2),(1,4,4);
INSERT INTO B(k,t,b) VALUES (2,3,3);
