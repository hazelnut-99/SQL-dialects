DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults (a UInt8, b DEFAULT 0, c DEFAULT identity(b)) ENGINE = Memory;
INSERT INTO defaults (a) VALUES (1);
