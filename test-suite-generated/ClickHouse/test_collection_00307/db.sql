CREATE TABLE IF NOT EXISTS data (sketch Array(Int8)) ENGINE=Memory;
INSERT INTO data VALUES ([-1,-1,-1]), ([4,-1,2]), ([0,25,-1]), ([-1,-1,7]), ([-1,-1,-1]);
DROP TABLE data;
