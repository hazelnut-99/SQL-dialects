DROP TABLE IF EXISTS ttl_with_default;
CREATE TABLE ttl_with_default (d DateTime, a Int default 777 ttl d + interval 5 SECOND) ENGINE = MergeTree ORDER BY d;
INSERT INTO ttl_with_default VALUES (now() - 1000, 1) (now() - 1000, 2) (now() + 1000, 3)(now() + 1000, 4);
OPTIMIZE TABLE ttl_with_default FINAL;
