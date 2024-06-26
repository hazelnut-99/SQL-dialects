DROP DATABASE IF EXISTS test_01457;
CREATE DATABASE test_01457;
CREATE TABLE tmp (n Int8) ENGINE=Memory;
CREATE TABLE test_01457.tf_remote AS remote('localhost', currentDatabase(), 'tmp');
SHOW CREATE TABLE test_01457.tf_remote;
CREATE TABLE test_01457.tf_remote_explicit_structure (n UInt64) AS remote('localhost', currentDatabase(), 'tmp');
SHOW CREATE TABLE test_01457.tf_remote_explicit_structure;
CREATE TABLE test_01457.tf_numbers (number String) AS numbers(1);
SHOW CREATE TABLE test_01457.tf_numbers;
CREATE TABLE test_01457.tf_merge AS merge(currentDatabase(), 'tmp');
SHOW CREATE TABLE test_01457.tf_merge;
DROP TABLE tmp;
DETACH DATABASE test_01457;
ATTACH DATABASE test_01457;
CREATE TABLE tmp (n Int8) ENGINE=Memory;
INSERT INTO test_01457.tf_remote_explicit_structure VALUES ('42');
