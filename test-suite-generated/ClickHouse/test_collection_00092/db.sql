DROP TABLE IF EXISTS replaceall;
CREATE TABLE replaceall (str FixedString(3)) ENGINE = Memory;
INSERT INTO replaceall VALUES ('foo');
INSERT INTO replaceall VALUES ('boa');
INSERT INTO replaceall VALUES ('bar');
INSERT INTO replaceall VALUES ('bao');
