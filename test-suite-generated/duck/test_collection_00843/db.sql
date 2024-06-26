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
