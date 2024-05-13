CREATE TABLE collate_test(s VARCHAR COLLATE NOACCENT.NOCASE);
INSERT INTO collate_test VALUES ('Mühleisen'), ('Hëllö');
INSERT INTO collate_test VALUES ('hEllO'), ('WöRlD'), ('wozld');
