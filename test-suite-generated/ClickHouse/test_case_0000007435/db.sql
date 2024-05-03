DROP TABLE IF EXISTS minimum_sample_size_continuos;
CREATE TABLE minimum_sample_size_continuos (baseline UInt64, sigma UInt64) ENGINE = Memory();
INSERT INTO minimum_sample_size_continuos VALUES (20, 10);
INSERT INTO minimum_sample_size_continuos VALUES (200, 10);
