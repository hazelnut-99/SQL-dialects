DROP TABLE IF EXISTS nullable_00465;
CREATE TABLE nullable_00465 (id Nullable(UInt32), cat String) ENGINE = Log;
INSERT INTO nullable_00465 (cat) VALUES ('test');
