DROP TABLE IF EXISTS src;
CREATE TABLE src (k UInt64, s FixedString(11)) ENGINE = Memory;
INSERT INTO src VALUES (1, 'Hello\0World');
DROP DICTIONARY IF EXISTS dict;
CREATE DICTIONARY dict
(
    k UInt64,
    s String
)
PRIMARY KEY k
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER default TABLE 'src'))
LAYOUT(FLAT)
LIFETIME(MIN 10 MAX 10);
