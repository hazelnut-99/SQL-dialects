COMMIT;
CREATE TEMP TABLE test_jsonb (
       json_type text,
       test_json jsonb
);
INSERT INTO test_jsonb VALUES
('scalar','"a scalar"'),
('array','["zero", "one","two",null,"four","five", [1,2,3],{"f1":9}]'),
('object','{"field1":"val1","field2":"val2","field3":null, "field4": 4, "field5": [1,2,3], "field6": {"f1":9}}');
CREATE TEMP TABLE foo (serial_num int, name text, type text);
INSERT INTO foo VALUES (847001,'t15','GE1043');
INSERT INTO foo VALUES (847002,'t16','GE1043');
INSERT INTO foo VALUES (847003,'sub-alpha','GESS90');
INSERT INTO foo VALUES (999999, NULL, 'bar');
CREATE TYPE jbpop AS (a text, b int, c timestamp);
CREATE DOMAIN jsb_int_not_null  AS int     NOT NULL;
CREATE DOMAIN jsb_int_array_1d  AS int[]   CHECK(array_length(VALUE, 1) = 3);
CREATE DOMAIN jsb_int_array_2d  AS int[][] CHECK(array_length(VALUE, 2) = 3);
create type jb_unordered_pair as (x int, y int);
create domain jb_ordered_pair as jb_unordered_pair check((value).x <= (value).y);
CREATE TYPE jsbrec AS (
	i	int,
	ia	_int4,
	ia1	int[],
	ia2	int[][],
	ia3	int[][][],
	ia1d	jsb_int_array_1d,
	ia2d	jsb_int_array_2d,
	t	text,
	ta	text[],
	c	char(10),
	ca	char(10)[],
	ts	timestamp,
	js	json,
	jsb	jsonb,
	jsa	json[],
	rec	jbpop,
	reca	jbpop[]
);
CREATE TYPE jsbrec_i_not_null AS (
	i	jsb_int_not_null
);
create type jsb_char2 as (a char(2));
create type jsb_ia as (a int[]);
create type jsb_ia2 as (a int[][]);
