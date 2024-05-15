CREATE TABLE main ( `id` String, `color` String, `section` String, `description` String) ENGINE = MergeTree ORDER BY tuple();
CREATE TABLE destination_join ( `key` String, `id` String, `color` String, `section` String, `description` String) ENGINE = Join(ANY, LEFT, key);
CREATE MATERIALIZED VIEW mv_to_join TO `destination_join` AS SELECT concat(id, '_', color) AS key, * FROM main;
INSERT INTO main VALUES ('sku_0001','black','women','nice shirt');
