DROP TABLE IF EXISTS clicks;
DROP TABLE IF EXISTS transactions;
CREATE TABLE clicks (domain String) ENGINE = Memory;
CREATE TABLE transactions (domain String) ENGINE = Memory;
INSERT INTO clicks VALUES ('facebook.com'), ('meta.ua'), ('google.com');
INSERT INTO transactions VALUES ('facebook.com'), ('meta.ua'), ('baidu.com');
