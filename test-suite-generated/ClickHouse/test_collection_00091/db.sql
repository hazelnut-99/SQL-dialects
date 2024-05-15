DROP TABLE IF EXISTS enum_totals;
CREATE TABLE enum_totals (e Enum8('hello' = 1, 'world' = 2)) ENGINE = Memory;
INSERT INTO enum_totals VALUES ('hello'), ('world'), ('world');
