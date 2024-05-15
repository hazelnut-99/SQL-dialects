COMMIT;
CREATE TEMP TABLE test_json (
       json_type text,
       test_json json
);
INSERT INTO test_json VALUES
('scalar','"a scalar"'),
('array','["zero", "one","two",null,"four","five", [1,2,3],{"f1":9}]'),
('object','{"field1":"val1","field2":"val2","field3":null, "field4": 4, "field5": [1,2,3], "field6": {"f1":9}}');
create type jpop as (a text, b int, c timestamp);
CREATE DOMAIN js_int_not_null  AS int     NOT NULL;
CREATE DOMAIN js_int_array_1d  AS int[]   CHECK(array_length(VALUE, 1) = 3);
CREATE DOMAIN js_int_array_2d  AS int[][] CHECK(array_length(VALUE, 2) = 3);
create type j_unordered_pair as (x int, y int);
create domain j_ordered_pair as j_unordered_pair check((value).x <= (value).y);
CREATE TYPE jsrec AS (
	i	int,
	ia	_int4,
	ia1	int[],
	ia2	int[][],
	ia3	int[][][],
	ia1d	js_int_array_1d,
	ia2d	js_int_array_2d,
	t	text,
	ta	text[],
	c	char(10),
	ca	char(10)[],
	ts	timestamp,
	js	json,
	jsb	jsonb,
	jsa	json[],
	rec	jpop,
	reca	jpop[]
);
CREATE TYPE jsrec_i_not_null AS (
	i	js_int_not_null
);
