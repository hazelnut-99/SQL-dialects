CREATE TABLE collate_test(s VARCHAR COLLATE NOACCENT.NOCASE);
INSERT INTO collate_test VALUES ('Mühleisen'), ('Hëllö');
SELECT * FROM collate_test WHERE s='Muhleisen';
SELECT * FROM collate_test WHERE s='muhleisen';
SELECT * FROM collate_test WHERE s='hEllô';
