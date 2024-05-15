DROP TABLE IF EXISTS data_null;
DROP TABLE IF EXISTS cannot_be_nullable;
CREATE TABLE data_null (
    a INT NULL,
    b INT NOT NULL,
    c Nullable(INT),
    d INT
) engine=Memory();
INSERT INTO data_null VALUES (NULL, 2, NULL, 4);
