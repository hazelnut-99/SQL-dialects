DROP TABLE IF EXISTS defaults;
CREATE TABLE defaults
(
	n Int8
)ENGINE = Memory();
INSERT INTO defaults SELECT * FROM numbers(10);
