DROP TABLE IF EXISTS non_ascii;
CREATE TABLE non_ascii (`привет` String, `мир` String) ENGINE = TinyLog;
INSERT INTO non_ascii VALUES ('hello', 'world');
