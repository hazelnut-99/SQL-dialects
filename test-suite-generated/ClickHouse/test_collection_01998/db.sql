DROP TABLE IF EXISTS dictionary_source_en;
DROP TABLE IF EXISTS dictionary_source_ru;
DROP TABLE IF EXISTS dictionary_source_view;
DROP DICTIONARY IF EXISTS flat_dictionary;
CREATE TABLE dictionary_source_en
(
    id UInt64,
    value String
) ENGINE = TinyLog;
INSERT INTO dictionary_source_en VALUES (1, 'One'), (2,'Two'), (3, 'Three');
CREATE TABLE dictionary_source_ru
(
    id UInt64,
    value String
) ENGINE = TinyLog;
INSERT INTO dictionary_source_ru VALUES (1, 'Один'), (2,'Два'), (3, 'Три');
CREATE VIEW dictionary_source_view AS
    SELECT id, dictionary_source_en.value as value_en, dictionary_source_ru.value as value_ru
    FROM dictionary_source_en LEFT JOIN dictionary_source_ru USING (id);
CREATE DICTIONARY flat_dictionary
(
    id UInt64,
    value_en String,
    value_ru String
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT 9000 USER 'default' PASSWORD '' TABLE 'dictionary_source_view'))
LIFETIME(MIN 1 MAX 1000)
LAYOUT(FLAT());
