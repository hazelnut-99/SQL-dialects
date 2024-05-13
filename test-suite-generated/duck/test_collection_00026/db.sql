CREATE TABLE collate_test(s VARCHAR COLLATE NOACCENT.NOCASE);
INSERT INTO collate_test VALUES ('Mühleisen'), ('Hëllö');
INSERT INTO collate_test VALUES ('hEllO'), ('WöRlD'), ('wozld');
INSERT INTO collate_test VALUES ('Mühleisen'), ('Hëllö');
CREATE TABLE collate_join_table(s VARCHAR, i INTEGER);
INSERT INTO collate_join_table VALUES ('Hello', 1), ('Muhleisen', 3);
