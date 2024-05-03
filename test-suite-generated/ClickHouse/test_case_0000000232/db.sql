DROP TABLE IF EXISTS x;
CREATE TABLE x ( `arr.key` Array(String), `arr.value` Array(String), `n` String ) ENGINE = Memory;
INSERT INTO x VALUES (['Hello', 'World'], ['abc', 'def'], 'test');
