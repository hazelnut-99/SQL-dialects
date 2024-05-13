CREATE TABLE 03015_aggregator_empty_data_multiple_blocks (c0 Int32) ENGINE = Memory();
INSERT INTO 03015_aggregator_empty_data_multiple_blocks SELECT * FROM generateRandom() LIMIT 1000;
