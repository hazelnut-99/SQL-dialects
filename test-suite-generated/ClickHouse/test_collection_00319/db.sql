DROP DATABASE IF EXISTS truncate_test;
DROP TABLE IF EXISTS truncate_test_log;
DROP TABLE IF EXISTS truncate_test_memory;
DROP TABLE IF EXISTS truncate_test_tiny_log;
DROP TABLE IF EXISTS truncate_test_stripe_log;
DROP TABLE IF EXISTS truncate_test_merge_tree;
DROP TABLE IF EXISTS truncate_test_materialized_view;
DROP TABLE IF EXISTS truncate_test_materialized_depend;
CREATE DATABASE truncate_test;
CREATE TABLE truncate_test_log(id UInt64) ENGINE = Log;
CREATE TABLE truncate_test_memory(id UInt64) ENGINE = Memory;
CREATE TABLE truncate_test_tiny_log(id UInt64) ENGINE = TinyLog;
CREATE TABLE truncate_test_stripe_log(id UInt64) ENGINE = StripeLog;
CREATE TABLE truncate_test_materialized_depend(p Date, k UInt64) ENGINE = Null;
INSERT INTO truncate_test_log VALUES(1);
INSERT INTO truncate_test_memory VALUES(1);
INSERT INTO truncate_test_tiny_log VALUES(1);
INSERT INTO truncate_test_stripe_log VALUES(1);
INSERT INTO truncate_test_materialized_depend VALUES('2000-01-01', 1);
TRUNCATE TABLE truncate_test_log;
TRUNCATE TABLE truncate_test_memory;
TRUNCATE TABLE truncate_test_tiny_log;
TRUNCATE TABLE truncate_test_stripe_log;
INSERT INTO truncate_test_log VALUES(1);
INSERT INTO truncate_test_memory VALUES(1);
INSERT INTO truncate_test_tiny_log VALUES(1);
INSERT INTO truncate_test_stripe_log VALUES(1);
INSERT INTO truncate_test_materialized_depend VALUES('2000-01-01', 1);
