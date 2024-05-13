DROP TABLE IF EXISTS 01889_sql_json;
CREATE TABLE 01889_sql_json (id UInt8, json String) ENGINE = MergeTree ORDER BY id;
INSERT INTO 01889_sql_json(id, json) VALUES(0, '{"name":"Ivan","surname":"Ivanov","friends":["Vasily","Kostya","Artyom"]}');
INSERT INTO 01889_sql_json(id, json) VALUES(1, '{"name":"Katya","surname":"Baltica","friends":["Tihon","Ernest","Innokentiy"]}');
INSERT INTO 01889_sql_json(id, json) VALUES(2, '{"name":"Vitali","surname":"Brown","friends":["Katya","Anatoliy","Ivan","Oleg"]}');
