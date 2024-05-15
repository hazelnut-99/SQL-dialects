CREATE TABLE m2 (id UInt64) ENGINE=Merge(currentDatabase(),'m0|m1v');
CREATE VIEW v AS SELECT 1;
