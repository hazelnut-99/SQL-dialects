CREATE TABLE raw_data
(
	`id` UInt8,
	`data` String
)
ENGINE = MergeTree
ORDER BY id;
INSERT INTO raw_data SELECT number, number
FROM numbers(10);
CREATE VIEW raw_data_parametrized AS
SELECT *
FROM raw_data
WHERE (id >= {id_from:UInt8}) AND (id <= {id_to:UInt8});
