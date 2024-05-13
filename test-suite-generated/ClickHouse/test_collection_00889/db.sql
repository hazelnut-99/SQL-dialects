DROP TABLE IF EXISTS f;
DROP TABLE IF EXISTS d;
CREATE TABLE f (`d_ids` Array(Int64) ) ENGINE = TinyLog;
INSERT INTO f VALUES ([1, 2]);
CREATE TABLE d (`id` Int64, `name` String ) ENGINE = TinyLog;
INSERT INTO d VALUES (2, 'a2'), (3, 'a3');
