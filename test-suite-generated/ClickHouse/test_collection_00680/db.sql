DROP TABLE IF EXISTS nullt;
CREATE TABLE nullt (c1 Nullable(UInt32), c2 Nullable(String))ENGINE = Log;
INSERT INTO nullt VALUES (1, 'abc'), (2, NULL), (NULL, NULL);
