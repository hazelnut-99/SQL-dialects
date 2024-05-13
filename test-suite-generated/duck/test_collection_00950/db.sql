create table null_table (i "null");
insert into null_table values (null);
create table null_list (i "null"[]);
insert into null_list values (null), ([null]);
create table null_struct (i struct(n "null"));
insert into null_struct values (null), ({n:null});
create table null_map (i map("null", "null"));
CREATE TABLE all_types AS SELECT * FROM test_all_types();
CREATE TABLE df (x VARCHAR, y BIGINT);
INSERT INTO df VALUES ('2021-01-01 12:00:00', 1);
CREATE TABLE timestamp (sec TIMESTAMP_S, milli TIMESTAMP_MS,micro TIMESTAMP_US, nano TIMESTAMP_NS );
INSERT INTO timestamp VALUES (NULL,NULL,NULL,NULL );
INSERT INTO timestamp VALUES ('2008-01-01 00:00:01','2008-01-01 00:00:01.594','2008-01-01 00:00:01.88926','2008-01-01 00:00:01.889268321' );
INSERT INTO timestamp VALUES ('2008-01-01 00:00:51','2008-01-01 00:00:01.894','2008-01-01 00:00:01.99926','2008-01-01 00:00:01.999268321' );
INSERT INTO timestamp VALUES ('2008-01-01 00:00:11','2008-01-01 00:00:01.794','2008-01-01 00:00:01.98926','2008-01-01 00:00:01.899268321' );
CREATE TABLE uhugeints (h UHUGEINT);
INSERT INTO uhugeints VALUES (0), (42), (NULL), ('340282366920938463463374607431768211455'::UHUGEINT);
CREATE TABLE blobs (b BLOB);
INSERT INTO blobs VALUES('a'), ('\xAA'), ('\xAA\xFF\xAA'),  (''), (NULL), ('\x55\xAA\xFF\x55\xAA\xFF\x55\xAA\xFF\x01'), ('\x55\xAA\xFF\x55\xAA\xFF\x55\xAA\xFF\x01');
CREATE TABLE uuids (u uuid);
INSERT INTO uuids VALUES ('A0EEBC99-9C0B-4EF8-BB6D-6BB9BD380A11'), (NULL), ('47183823-2574-4bfd-b411-99ed177d3e43'), ('{10203040506070800102030405060708}');
CREATE TABLE bits (b BIT);
INSERT INTO bits VALUES('1'), ('010111'), ('111110010011'), (NULL), ('000000000000000000'), ('00100110010100100101001010010101010011110101000000000111100100110');
CREATE TABLE interval (t INTERVAL);
INSERT INTO interval VALUES (INTERVAL '1' DAY), (NULL), (INTERVAL '3 months 2 days 5 seconds');
CREATE TABLE unsigned (a utinyint, b usmallint, c uinteger, d ubigint);
INSERT INTO unsigned VALUES (1,1,1,1), (42,42,42,42), (NULL,NULL,NULL,NULL), (255,65535,4294967295,18446744073709551615);
UPDATE unsigned
SET a = 10, b = 9, c = 8, d = 7
WHERE a = 1;
CREATE TABLE hugeints (h HUGEINT);
INSERT INTO hugeints VALUES (1043178439874412422424), (42), (NULL), (47289478944894789472897441242);
INSERT INTO interval VALUES (INTERVAL '20' DAY), (INTERVAL '1' YEAR), (INTERVAL '1' MONTH);
BEGIN TRANSACTION;
UPDATE interval SET t=INTERVAL '1' MONTH WHERE t=INTERVAL '20' DAY;
ROLLBACK;
UPDATE interval SET t=INTERVAL '1' MONTH WHERE t=INTERVAL '20' DAY;
INSERT INTO uhugeints VALUES (100::UHUGEINT), (1023819078293589341789412412), (42);
BEGIN TRANSACTION;
UPDATE uhugeints SET h=100 WHERE h=42;
ROLLBACK;
UPDATE uhugeints SET h=100 WHERE h=42;
UPDATE uhugeints SET h=h+1 WHERE h=100;
INSERT INTO hugeints VALUES (100::HUGEINT), (1023819078293589341789412412), (42);
BEGIN TRANSACTION;
UPDATE hugeints SET h=100 WHERE h=42;
ROLLBACK;
UPDATE hugeints SET h=100 WHERE h=42;
UPDATE hugeints SET h=h+1 WHERE h=100;
CREATE TABLE strings(i varchar);
CREATE INDEX i_index ON strings(i);
INSERT INTO strings VALUES ('test');
INSERT INTO strings VALUES ('test1');
INSERT INTO strings VALUES ('vest1');
INSERT INTO strings VALUES ('somesuperbigstring');
INSERT INTO strings VALUES ('somesuperbigstring1');
INSERT INTO strings VALUES ('somesuperbigstring2');
INSERT INTO strings VALUES ('somesuperbigstring');
INSERT INTO strings VALUES ('maybesomesuperbigstring');
INSERT INTO strings VALUES ('maybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstring');
INSERT INTO strings VALUES ('maybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstringmaybesomesuperbigstring2');
DROP INDEX i_index;
DROP TABLE strings;
CREATE TABLE integers(i TINYINT, j SMALLINT, k INTEGER, l BIGINT);
CREATE INDEX i_index1 ON integers(i);
CREATE INDEX i_index2 ON integers(j);
CREATE INDEX i_index3 ON integers(k);
CREATE INDEX i_index4 ON integers(l);
INSERT INTO integers VALUES (1,1,1,1);
INSERT INTO integers VALUES (2,2,2,2);
INSERT INTO integers VALUES (3,3,3,3);
INSERT INTO integers VALUES (4,4,4,4);
INSERT INTO integers VALUES (5,5,5,5);
CREATE TABLE storage as select i::INTEGER i, random() j from range(1, 1001, 1) tbl(i);
CREATE INDEX i_index ON integers(i);
BEGIN TRANSACTION;
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
DELETE FROM storage WHERE i=(select i from storage order by j limit 1);
